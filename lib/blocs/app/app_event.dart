import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'app_event.freezed.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.showError({required String message}) = _ShowError;

  const factory AppEvent.showToast({required String message}) = _ShowToast;

  const factory AppEvent.showDialog({required String title, String? message}) =
      _ShowInfoDialog;

  const factory AppEvent.networkProblem({required String message}) =
      _NetworkProblem;
}

class AppHandler {
  static final BehaviorSubject<AppEvent> eventSubscription =
      BehaviorSubject<AppEvent>();

  static void push(AppEvent event) {
    eventSubscription.add(event);
  }
}
