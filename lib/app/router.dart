import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:architecture/features/app.dart';
import 'package:architecture/features/calling/calling_page.dart';
import 'package:architecture/features/home/home_page.dart';
import 'package:architecture/features/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter =
    GoRouter(initialLocation: '/', navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) => transitionPage(const AppWidget()),
      routes: [
        GoRoute(
            path: 'login',
            pageBuilder: (context, state) => transitionPage(const LoginPage())),
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return Scaffold(
              body: BlocBuilder<CallingCubit, CallingState>(
                builder: (context, state) {
                  state.map(idle: (data) {
                    return child;
                  }, incomingCall: (data) {
                    return const IncomingCall();
                  }, outgoingCall: (data) {
                    return const OutgoingCall();
                  }, callConnected: (data) {
                    return ConnectedCall(
                        localRenderer: data.localRenderer,
                        remoteRenderer: data.remoteRenderer);
                  });
                  return child;
                },
              ),
            );
          },
          routes: <RouteBase>[
            GoRoute(
                path: 'home',
                pageBuilder: (context, state) =>
                    transitionPage(const HomePage())),
          ],
        ),
      ]),
]);

CustomTransitionPage<dynamic> transitionPage(Widget child) {
  return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      });
}
