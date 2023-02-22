import 'package:architecture/services/calling/calling_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logging/logging.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// enum CallingEventSignal { makeCall, answerCall, offer, answer, candidate, none }

// extension CallingEventSignalToString on CallingEventSignal {
//   String parseString() {
//     switch (this) {
//       case CallingEventSignal.makeCall:
//         return 'MAKE_CALL';
//       case CallingEventSignal.answerCall:
//         return 'ANSWER_CALL';
//       case CallingEventSignal.offer:
//         return 'OFFER';
//       case CallingEventSignal.answer:
//         return 'ANSWER';
//       case CallingEventSignal.candidate:
//         return 'CANDIDATE';
//       case CallingEventSignal.none:
//         return 'NONE';
//     }
//   }
// }
//
// extension ExtCallingEventSignal on String {
//   CallingEventSignal toSignalEvent() {
//     switch (this) {
//       case 'MAKE_CALL':
//         return CallingEventSignal.makeCall;
//       case 'ANSWER_CALL':
//         return CallingEventSignal.answerCall;
//       case 'OFFER':
//         return CallingEventSignal.offer;
//       case 'ANSWER':
//         return CallingEventSignal.answer;
//       case 'CANDIDATE':
//         return CallingEventSignal.candidate;
//     }
//     return CallingEventSignal.none;
//   }
// }

class CallingSignal {
  late final Map<String, Function> eventActions;

  CallingSignal._() {
    eventActions = {
      'MAKE_CALL': _receivedMakeCall,
      'ANSWER_CALL': _receivedAnswerCall,
      'OFFER': _receivedOffer,
      'ANSWER': _receivedAnswer,
      'CANDIDATE': _receivedCandidate,
      'HANG_UP': _receivedHangUp
    };
  }

  static final CallingSignal instance = CallingSignal._();

  WebSocketChannel? channel;
  final log = Logger('CallingSignal');

  void openConnection(String url) {
    channel = WebSocketChannel.connect(Uri.parse(url));

    channel?.stream.listen((event) {
      _handleEvent(event);
    }).onError((exception) {
      Fluttertoast.showToast(msg: exception?.message ?? '');
    });
    channel?.sink.add('Hello frog');
  }

  void _handleEvent(dynamic event) {
    if (event.runtimeType is Map<String, dynamic>) {
      final eventType = event['type'] as String?;
      if (eventType != null) {
        final eventData = event['data'] as Map<String, dynamic>;
        final action = eventActions[eventType];
        if (action != null) {
          action(eventData);
        }
      } else {
        log.info(event);
      }
    } else {
      log.info(event);
    }
  }

  void _receivedMakeCall(dynamic data) {
    final event = {'type': 'ANSWER_CALL'};
    sendEvent(event);
  }

  Future<void> _receivedAnswerCall(dynamic data) async {
    final offer = await CallingService.instance.createOffer();
    final event = {'type': 'OFFER', 'data': offer.toMap()};
    CallingSignal.instance.sendEvent(event);
  }

  Future<void> _receivedOffer(dynamic data) async {
    CallingService.instance.addRemoteDescription(data);
    final answer = await CallingService.instance.createOffer();
    final event = {'type': 'ANSWER', 'data': answer.toMap()};
    CallingSignal.instance.sendEvent(event);
  }

  void _receivedAnswer(dynamic data) {
    CallingService.instance.addRemoteDescription(data);
  }

  void _receivedHangUp(dynamic data) {
    CallingService.instance.hangUp();
  }

  void _receivedCandidate(dynamic data) {}

  void sendEvent(Map<String, dynamic> data) {
    channel?.sink.add(data);
  }

  void close() {
    channel?.sink.close();
  }
}
