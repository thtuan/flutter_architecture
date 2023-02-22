import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/services/calling/calling_service.dart';
import 'package:architecture/services/calling/calling_signal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallingCubit extends Cubit<CallingState> {
  final callingService = CallingService.instance;
  final callingSignal = CallingSignal.instance;

  CallingCubit() : super(const CallingState.idle());

  Future<void> makeCall() async {
    await callingService.openUserMedia();
    await callingService.initConfig();
    await callingService.makeOutGoingCall('to');
  }

  Future<void> answer() async {
    await callingService.openUserMedia();
    await callingService.initConfig();
    await callingService.answerIncomingCall('to');
  }

  Future<void> receivedIncomingCall() async {
    emit(const CallingState.incomingCall());
  }

  Future<void> hangUp() async {
    await callingService.hangUp();
  }
}
