import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:architecture/services/calling/calling_event.dart';
import 'package:architecture/services/calling/calling_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logging/logging.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketSignal {
  SocketSignal._() {
    _eventActions = {
      'MAKE_CALL': _receivedMakeCall,
      'ANSWER_CALL': _receivedAnswerCall,
      'OFFER': _receivedOffer,
      'ANSWER': _receivedAnswer,
      'CANDIDATE': _receivedCandidate,
      'HANG_UP': _receivedHangUp,
    };
  }

  static final SocketSignal instance = SocketSignal._();

  late final Map<String, Function> _eventActions;
  WebSocketChannel? _channel;
  final _log = Logger('CallingSignal');

  final StreamController<CallingEvent> callingEvent =
      StreamController.broadcast();

  void openConnection(String url) {
    _channel = WebSocketChannel.connect(Uri.parse(url));
    _channel?.stream.listen((event) {
      _log.info('Received message: $event');
      _handleEvent(event);
    }, onDone: (() {
      Fluttertoast.showToast(msg: 'On done');
    }), onError: ((exception) {
      if (exception is SocketException) {
        openConnection(url);
      }
      Fluttertoast.showToast(msg: exception?.message ?? '');
    }));
  }

  void _handleEvent(dynamic event) {
    try {
      final parseEvent = json.decode(event);
      if (parseEvent is Map<String, dynamic>) {
        final eventType = parseEvent['type'] as String?;
        if (eventType == null) {
          return;
        }
        final eventData = parseEvent['data'] as Map<String, dynamic>?;
        final action = _eventActions[eventType];
        if (action != null) {
          action(eventData);
        }
      }
    } catch (exception) {
      Fluttertoast.showToast(msg: exception.toString());
    }
  }

  void _receivedMakeCall(dynamic data) {
    _log.warning('_receivedMakeCall');
    callingEvent.sink.add(const CallingEvent.receivedMakeCall());
    // final event = {'type': 'ANSWER_CALL'};
    // sendEvent(event);
  }

  Future<void> _receivedAnswerCall(dynamic data) async {
    _log.warning('_receivedAnswerCall');
    callingEvent.sink.add(const CallingEvent.receivedAnswerCall());
    final offer = await CallingService.instance.createOffer();
    final event = {'type': 'OFFER', 'data': offer.toMap()};
    sendEvent(event);
  }

  Future<void> _receivedOffer(dynamic data) async {
    _log.warning('_receivedOffer');
    callingEvent.sink.add(const CallingEvent.receivedOffer());
    await CallingService.instance.addRemoteDescription(data);
    final answer = await CallingService.instance.createAnswer();
    final event = {'type': 'ANSWER', 'data': answer.toMap()};
    sendEvent(event);
  }

  Future<void> _receivedAnswer(dynamic data) async {
    _log.warning('_receivedAnswer');
    CallingService.instance.addRemoteDescription(data);
    callingEvent.sink.add(const CallingEvent.receivedAnswer());
  }

  void _receivedHangUp(dynamic data) {
    callingEvent.sink.add(const CallingEvent.receivedHandUp());
    _log.warning('_receivedHangUp');
    CallingService.instance.hangUp();
  }

  void _receivedCandidate(dynamic data) {
    _log.info('Received candidate');
    CallingService.instance.addRemoteCandidate(data);
    // callingEvent.sink.add(const CallingEvent.receivedCandidate());
  }

  void sendEvent(Map<String, dynamic> data) {
    _log.info('Send $data, $_channel');
    _channel?.sink.add(json.encode(data));
  }

  void close() {
    _log.info('Close socket');
    _channel?.sink.close();
  }
}
