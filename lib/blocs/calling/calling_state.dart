import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calling_state.freezed.dart';

@freezed
class CallingState with _$CallingState {
  const factory CallingState.idle(
      {String? remoteInformation, String? localInformation}) = _Idle;

  const factory CallingState.incomingCall({
    String? remoteInformation,
    String? localInformation,
  }) = _IncomingCall;

  const factory CallingState.outgoingCall({
    String? remoteInformation,
    String? localInformation,
  }) = _OutgoingCall;

  const factory CallingState.callConnected({
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
    String? remoteInformation,
    String? localInformation,
    required bool enableCamera,
    required bool enableSpeaker,
  }) = _CallConnected;
}
