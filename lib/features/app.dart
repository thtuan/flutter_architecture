import 'package:architecture/blocs/app/app_cubit.dart';
import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/features/calling/calling_page.dart';
import 'package:architecture/features/calling/connected_call.dart';
import 'package:architecture/features/error/error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

class AppWidget extends StatefulWidget {
  final Widget child;

  const AppWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final logging = Logger(
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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AppCubit, AppState>(listener: (context, state) {
            state.map(initial: (state) {
              //TODO(TuanHT): do some thing with init App
            }, inactive: (state) {
              //TODO(TuanHT): do some thing when app deactive
            }, error: (state) {
              final code = state.code;
              switch (code) {
                case 100:
                  break;
                case 200:
                  break;
                case 300:
                  break;
                case 400:
                  break;
                case 500:
                  break;
                default:
                  // Fluttertoast.showToast(msg: state.message);
                  break;
              }
            }, inSession: (state) {
              final lastRoutePath = state.lastRoutePath;
              if (lastRoutePath != null) {
                context.go(lastRoutePath);
              } else {
                context.go('/home');
              }
            }, outSession: (state) {
              context.go('/login');
            });
          }),
        ],
        child: Scaffold(
            body: Stack(
          fit: StackFit.expand,
          children: [
            BlocBuilder<CallingCubit, CallingState>(
                builder: (context, blocState) {
              return blocState.map(idle: (idle) {
                return widget.child;
              }, incomingCall: (incomingCall) {
                return const IncomingCall();
              }, outgoingCall: (outgoingCall) {
                return const OutgoingCall();
              }, callConnected: (callConnected) {
                return const ConnectedCall();
              });
            }),
            BlocBuilder<AppCubit, AppState>(builder: (context, state) {
              return Visibility(
                  visible: state.maybeMap(
                      error: (error) => true, orElse: () => false),
                  child: const ErrorPage());
            })
          ],
        )));
  }
}
