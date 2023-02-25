import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'calling_event.freezed.dart';
@freezed
class CallingEvent with _$CallingEvent {
  const factory CallingEvent.receivedMakeCall() = _ReceivedMakeCall;
  const factory CallingEvent.receivedAnswerCall() = _ReceivedAnswerCall;
  const factory CallingEvent.receivedOffer() = _ReceivedOffer;
  const factory CallingEvent.receivedAnswer() = _ReceivedAnswer;
  const factory CallingEvent.receivedCandidate() = _ReceivedCandidate;
  const factory CallingEvent.receivedHandUp() = _ReceivedHandUp;
}
