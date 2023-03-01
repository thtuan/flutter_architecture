import 'package:architecture/services/socket/socket_signal.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:logger/logger.dart';

typedef StreamStateCallback = void Function(MediaStream stream);

abstract class CallingFlow {
  Future<void> makeOutGoingCall();

  Future<void> answerCall();
}

class CallingService {
  final logger = Logger();

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

  String get sdpSemantics => 'unified-plan';

  // String get sdpSemantics => 'plan-b';
  final Map<String, dynamic> _config = {
    "mandatory": {
      "OfferToReceiveAudio": true,
      "OfferToReceiveVideo": true,
    },
    'optional': [
      {'DtlsSrtpKeyAgreement': true},
    ]
  };

  RTCPeerConnection? peerConnection;
  MediaStream? _localStream;
  MediaStream? _remoteStream;
  StreamStateCallback? onAddRemoteStream;
  StreamStateCallback? onLocalStream;
  Function(MediaStream, List<MediaStream>)? onConnected;
  RTCPeerConnectionState callingState =
      RTCPeerConnectionState.RTCPeerConnectionStateClosed;

  Future<void> initConfig() async {
    await _openUserMedia();
    logger.i('Create PeerConnection with configuration: $configuration');
    peerConnection = await createPeerConnection(_config, {
      ...configuration,
      ...{'sdpSemantics': sdpSemantics}
    });
    registerPeerConnectionListeners();

    ///Add track to stream ==> outgoing stream
    _localStream?.getTracks().forEach((track) {
      peerConnection?.addTrack(track, _localStream!);
    });
  }

  Future<void> makeOutGoingCall(String to) async {
    final event = {'type': 'MAKE_CALL', 'remote': to};
    SocketSignal.instance.sendEvent(event);
  }

  Future<void> answerIncomingCall(String to) async {
    final event = {'type': 'ANSWER_CALL', 'remote': to};
    SocketSignal.instance.sendEvent(event);
  }

  Future<void> makeHangUp() async {
    await stopPeerStream();
    final event = {'type': 'HANG_UP'};
    SocketSignal.instance.sendEvent(event);
  }

  Future<void> stopPeerStream() async {
    List<MediaStreamTrack>? tracks = _localStream?.getTracks();
    if (tracks != null) {
      for (var track in tracks) {
        track.stop();
      }
    }

    if (_remoteStream != null) {
      _remoteStream!.getTracks().forEach((track) => track.stop());
    }
    if (peerConnection != null) peerConnection!.close();

    _localStream?.dispose();
    _remoteStream?.dispose();
  }

  Future<dynamic> createOffer() async {
    RTCSessionDescription offer = await peerConnection!.createOffer();
    await peerConnection!.setLocalDescription(_fixSdp(offer));
    logger.i('Created offer: $offer');
    return offer;
  }

  Future<dynamic> createAnswer() async {
    var answer = await peerConnection!.createAnswer();
    logger.i('Created Answer $answer');
    await peerConnection!.setLocalDescription(_fixSdp(answer));
    return answer;
  }

  // Use for exchanging candidates
  void addRemoteCandidate(Map<String, dynamic> data) {
    logger.i('Got new remote ICE candidate: $data}');
    peerConnection?.addCandidate(
      RTCIceCandidate(
        data['candidate'],
        data['sdpMid'],
        data['sdpMLineIndex'],
      ),
    );
  }

  // Use for remote offer / answer
  Future<void> addRemoteDescription(Map<String, dynamic>? data) async {
    if (peerConnection?.getRemoteDescription() != null && data != null) {
      var remoteDescription = RTCSessionDescription(
        data['sdp'],
        data['type'],
      );

      logger.i("Someone tried to connect");
      await peerConnection?.setRemoteDescription(remoteDescription);
    }
  }

  Future<void> _openUserMedia() async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'mandatory': {
          'minWidth':
              '640', // Provide your own width, height and frame rate here
          'minHeight': '480',
          'minFrameRate': '30',
        },
        'facingMode': 'user',
        'optional': [],
      }
    };

    var stream = await navigator.mediaDevices.getUserMedia(mediaConstraints);
    _localStream = stream;
    // onLocalStream?.call(stream);
    // _remoteStream = await createLocalMediaStream('key');
  }

  void registerPeerConnectionListeners() {
    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      logger.i('ICE gathering state changed: $state');
    };

    peerConnection?.onConnectionState = (RTCPeerConnectionState state) {
      logger.i('Connection state change: $state');
      callingState = state;
      if (state == RTCPeerConnectionState.RTCPeerConnectionStateConnected) {
        onConnected?.call(_localStream!, [_remoteStream!]);
      }
    };

    peerConnection?.onSignalingState = (RTCSignalingState state) {
      logger.i('Signaling state change: $state');
    };

    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      logger.i('ICE connection state change: $state');
    };

    peerConnection?.onAddStream = (MediaStream stream) {
      logger.i("Add remote stream");
      _remoteStream = stream;
      onAddRemoteStream?.call(stream);
    };

    peerConnection?.onIceCandidate = (RTCIceCandidate candidate) {
      logger.i('Got candidate: ${candidate.toMap()}');
      SocketSignal.instance
          .sendEvent({'type': 'CANDIDATE', 'data': candidate.toMap()});
    };

    peerConnection?.onTrack = (RTCTrackEvent event) {
      logger.i('Got remote track: ${event.streams[0]}');
      event.streams[0].getTracks().forEach((track) {
        logger.i('Add a track to the remoteStream $track');
        _remoteStream?.addTrack(track);
      });
    };
  }

  RTCSessionDescription _fixSdp(RTCSessionDescription s) {
    var sdp = s.sdp;
    s.sdp =
        sdp!.replaceAll('profile-level-id=640c1f', 'profile-level-id=42e032');
    return s;
  }
}
