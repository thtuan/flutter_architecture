import 'dart:async';

import 'package:architecture/models/app_event/app_event.dart';

class AppEventFactory {
  final StreamController<AppEvent> _controller = StreamController.broadcast();

  AppEventFactory._();

  static AppEventFactory instance = AppEventFactory._();

  void addEvent(AppEvent event) {
    _controller.sink.add(event);
  }

  Stream<AppEvent> stream() {
    return _controller.stream;
  }
}
