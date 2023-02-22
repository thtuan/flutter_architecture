import 'package:architecture/services/calling/calling_signal.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:logging/logging.dart';

typedef StreamStateCallback = void Function(MediaStream stream);

abstract class CallingFlow {
  Future<void> makeOutGoingCall();

  Future<void> answerCall();
}

class CallingService {
  final logger = Logger('CallingService');

  CallingService._();

  static final CallingService instance = CallingService._();

  Map<String, dynamic> configuration = {
    'iceServers': [
      {
        'urls': [
          'stun:stun1.l.google.com:19302',
          'stun:stun2.l.google.com:19302'
        ]
      }
    ]
  };

  RTCPeerConnection? peerConnection;
  MediaStream? _localStream;
  MediaStream? _remoteStream;
  StreamStateCallback? onAddRemoteStream;
  RTCVideoRenderer? _localVideo;
  RTCVideoRenderer? _remoteVideo;

  RTCPeerConnectionState callingState =
      RTCPeerConnectionState.RTCPeerConnectionStateClosed;

  Future<void> initConfig() async {
    logger.info('Create PeerConnection with configuration: $configuration');
    peerConnection = await createPeerConnection(configuration);
    registerPeerConnectionListeners();

    ///Add track to stream ==> outgoing stream
    _localStream?.getTracks().forEach((track) {
      peerConnection?.addTrack(track, _localStream!);
    });

    peerConnection?.onIceCandidate = (RTCIceCandidate candidate) {
      logger.info('Got candidate: ${candidate.toMap()}');
      CallingSignal.instance
          .sendEvent({'type': 'CANDIDATE', 'data': candidate.toMap()});
    };

    peerConnection?.onTrack = (RTCTrackEvent event) {
      logger.info('Got remote track: ${event.streams[0]}');

      event.streams[0].getTracks().forEach((track) {
        logger.info('Add a track to the remoteStream $track');
        _remoteStream?.addTrack(track);
      });
    };
  }

  Future<void> makeOutGoingCall(String to) async {
    final event = {'type': 'MAKE_CALL', 'remote': to};
    CallingSignal.instance.sendEvent(event);
  }

  Future<void> answerIncomingCall(String to) async {
    final event = {'type': 'ANSWER_CALL', 'remote': to};
    CallingSignal.instance.sendEvent(event);
  }

  void makeHangUp(RTCVideoRenderer localVideo) {
    final event = {'type': 'HANG_UP'};
    CallingSignal.instance.sendEvent(event);
    hangUp();
  }

  Future<void> hangUp() async {
    List<MediaStreamTrack>? tracks = _localVideo?.srcObject?.getTracks();
    if (tracks != null) {
      for (var track in tracks) {
        track.stop();
      }
    }

    if (_remoteStream != null) {
      _remoteStream!.getTracks().forEach((track) => track.stop());
    }
    if (peerConnection != null) peerConnection!.close();

    _localStream!.dispose();
    _remoteStream?.dispose();
  }

  Future<dynamic> createOffer() async {
    RTCSessionDescription offer = await peerConnection!.createOffer();
    await peerConnection!.setLocalDescription(offer);
    logger.info('Created offer: $offer');
    return offer;
  }

  Future<dynamic> createAnswer() async {
    var answer = await peerConnection!.createAnswer();
    logger.info('Created Answer $answer');
    await peerConnection!.setLocalDescription(answer);
    return answer;
  }

  // Use for exchanging candidates
  void addRemoteCandidate(Map<String, dynamic> data) {
    logger.info('Got new remote ICE candidate: $data}');
    peerConnection?.addCandidate(
      RTCIceCandidate(
        data['candidate'],
        data['sdpMid'],
        data['sdpMLineIndex'],
      ),
    );
  }

  // Use for remote offer / answer
  Future<void> addRemoteDescription(Map<String, dynamic> data) async {
    if (peerConnection?.getRemoteDescription() != null &&
        data['answer'] != null) {
      var answer = RTCSessionDescription(
        data['answer']['sdp'],
        data['answer']['type'],
      );

      logger.info("Someone tried to connect");
      await peerConnection?.setRemoteDescription(answer);
    }
  }

  Future<void> openUserMedia() async {
    _localVideo = RTCVideoRenderer();
    _localVideo?.initialize();
    _remoteVideo = RTCVideoRenderer();
    _remoteVideo?.initialize();
    var stream = await navigator.mediaDevices
        .getUserMedia({'video': true, 'audio': false});

    _localVideo?.srcObject = stream;
    _localStream = stream;

    _remoteVideo?.srcObject = await createLocalMediaStream('key');
  }

  void registerPeerConnectionListeners() {
    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      logger.info('ICE gathering state changed: $state');
    };

    peerConnection?.onConnectionState = (RTCPeerConnectionState state) {
      logger.info('Connection state change: $state');
      callingState = state;
    };

    peerConnection?.onSignalingState = (RTCSignalingState state) {
      logger.info('Signaling state change: $state');
    };

    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      logger.info('ICE connection state change: $state');
    };

    peerConnection?.onAddStream = (MediaStream stream) {
      logger.info("Add remote stream");
      onAddRemoteStream?.call(stream);
      _remoteStream = stream;
    };
  }
}
