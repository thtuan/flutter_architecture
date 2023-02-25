import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/services/calling/calling_service.dart';
import 'package:architecture/services/calling/socket_signal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class CallingCubit extends Cubit<CallingState> {
  final callingService = CallingService.instance;
  final callingSignal = SocketSignal.instance;
  final _log = Logger('CallingCubit');

  CallingCubit() : super(const CallingState.idle());

  void startListenEvent() {
    callingSignal.callingEvent.stream.listen((event) {
      event.maybeMap(
          receivedMakeCall: (value) {
            _log.info('Emit incoming call');
            emit(const CallingState.incomingCall());
          },
          receivedAnswer: (value) {
            final localVideo = callingService.localVideo;
            final remoteVideo = callingService.remoteVideo;
            if (localVideo != null && remoteVideo != null) {
              emit(CallingState.callConnected(
                  localRenderer: localVideo,
                  remoteRenderer: remoteVideo,
                  enableCamera: false,
                  enableSpeaker: false));
            }
          },
          orElse: () {});
    });
  }

  Future<void> makeCall() async {
    await callingService.openUserMedia();
    await callingService.initConfig();
    await callingService.makeOutGoingCall('to');
    emit(const CallingState.outgoingCall());
  }

  Future<void> answer() async {
    await callingService.openUserMedia();
    await callingService.initConfig();
    await callingService.answerIncomingCall('to');
    final localVideo = callingService.localVideo;
    final remoteVideo = callingService.remoteVideo;
    if (localVideo != null && remoteVideo != null) {
      emit(CallingState.callConnected(
          localRenderer: localVideo,
          remoteRenderer: remoteVideo,
          enableCamera: false,
          enableSpeaker: false));
    }
  }

  Future<void> receivedIncomingCall() async {
    emit(const CallingState.incomingCall());
  }

  Future<void> hangUp() async {
    state.mapOrNull(callConnected: (value) {
      value.remoteRenderer.dispose();
      value.localRenderer.dispose();
    });
    await callingService.hangUp();
    emit(const CallingState.idle());
  }
}
