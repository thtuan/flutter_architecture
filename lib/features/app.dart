import 'package:architecture/app/app.dart';
import 'package:architecture/blocs/auth/auth_cubit.dart';
import 'package:architecture/blocs/auth/auth_state.dart';
import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final logging = Logger('AppWidget');

  @override
  void initState() {
    logging.info('start check auth');
    App.instance.authCubit.checkAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<CallingCubit, CallingState>(
            listener: (context, state) {
              state.map(
                  idle: (value) {},
                  incomingCall: (value) {
                    context.push('/incomingCall');
                  },
                  outgoingCall: (value) {
                    context.push('/outgoingCall');
                  },
                  callConnected: (value) {
                    context.push('/callConnected');
                  });
            },
          ),
          BlocListener<AuthCubit, AuthState>(listener: (context, state) {
            logging.info('auth $state');
            state.when(authenticated: () {
              context.go('/home');
            }, unAuthenticated: () {
              context.go('/login');
            }, error: (message) {
              Fluttertoast.showToast(msg: 'Some thing error');
            });
          }),
        ],
        child: const Scaffold(
          body: SplashPage(),
        ));
  }
}
