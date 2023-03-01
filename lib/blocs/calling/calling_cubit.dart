import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/services/calling/calling_service.dart';
import 'package:architecture/services/socket/socket_signal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class CallingCubit extends Cubit<CallingState> {
  final callingService = CallingService.instance;
  final callingSignal = SocketSignal.instance;
  final _log = Logger(
    printer: PrettyPrinter(
        methodCount: 2,
        // number of method calls to be displayed
        errorMethodCount: 8,
        // number of method calls if stacktrace is provided
        lineLength: 120,
        // width of the output
        colors: true,
        // Colorful log messages
        printEmojis: true,
        // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  CallingCubit() : super(const CallingState.idle());

  void startListenEvent() {
    CallingService.instance.onConnected = (localStream, remoteStream) {
      emit(CallingState.callConnected(
          enableCamera: true,
          enableSpeaker: true,
          localStream: localStream,
          remoteStreams: remoteStream));
    };
    callingSignal.callingEvent.stream.listen((event) {
      event.maybeMap(
          receivedMakeCall: (value) {
            _log.i('Emit incoming call');
            emit(const CallingState.incomingCall());
          },
          receivedAnswer: (value) {},
          receivedHandUp: (value) {
            emit(const CallingState.idle());
          },
          orElse: () {});
    });
  }

  Future<void> makeCall() async {
    await callingService.initConfig();
    await callingService.makeOutGoingCall('to');
    emit(const CallingState.outgoingCall());
  }

  Future<void> answer() async {
    await callingService.initConfig();
    await callingService.answerIncomingCall('to');
  }

  Future<void> receivedIncomingCall() async {
    emit(const CallingState.incomingCall());
  }

  Future<void> hangUp() async {
    await callingService.makeHangUp();
    _log.i('Change state to idle');
    emit(const CallingState.idle());
  }
}
