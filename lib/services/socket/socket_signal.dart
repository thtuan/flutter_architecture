import 'dart:async';
import 'dart:convert';

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
  final _log = Logger('SocketSignal');

  final StreamController<CallingEvent> callingEvent =
      StreamController.broadcast();

  void openConnection(String url) {
    _channel = WebSocketChannel.connect(Uri.parse(url));
    _channel?.stream.listen((event) {
      _log.info('Received message: $event');
      _handleEvent(event);
    }, onDone: (() {
      Fluttertoast.showToast(
          msg: 'Socket disconnected plz check your connection');
    }), onError: ((exception) {
      if (exception is WebSocketChannelException) {
        Fluttertoast.showToast(
            msg: 'Cannot connect to server, try again later');

        // openConnection(url);
      } else {
        Fluttertoast.showToast(msg: exception?.message ?? '');
      }
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
      if (exception is FormatException) {
        Fluttertoast.showToast(msg: event);
      } else {
        Fluttertoast.showToast(msg: exception.toString());
      }
    }
  }

  void _receivedMakeCall(dynamic data) {
    _log.info('_receivedMakeCall');
    callingEvent.sink.add(const CallingEvent.receivedMakeCall());
  }

  Future<void> _receivedAnswerCall(dynamic data) async {
    _log.info('_receivedAnswerCall');
    callingEvent.sink.add(const CallingEvent.receivedAnswerCall());
    final offer = await CallingService.instance.createOffer();
    final event = {'type': 'OFFER', 'data': offer.toMap()};
    sendEvent(event);
  }

  Future<void> _receivedOffer(dynamic data) async {
    _log.info('_receivedOffer');
    callingEvent.sink.add(const CallingEvent.receivedOffer());
    await CallingService.instance.addRemoteDescription(data);
    final answer = await CallingService.instance.createAnswer();
    final event = {'type': 'ANSWER', 'data': answer.toMap()};
    sendEvent(event);
  }

  Future<void> _receivedAnswer(dynamic data) async {
    _log.info('_receivedAnswer');
    CallingService.instance.addRemoteDescription(data);
    callingEvent.sink.add(const CallingEvent.receivedAnswer());
  }

  void _receivedHangUp(dynamic data) {
    callingEvent.sink.add(const CallingEvent.receivedHandUp());
    _log.info('_receivedHangUp');
    CallingService.instance.stopPeerStream();
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
