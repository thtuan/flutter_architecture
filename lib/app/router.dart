import 'package:architecture/features/app.dart';
import 'package:architecture/features/calling/calling_page.dart';
import 'package:architecture/features/home/home_page.dart';
import 'package:architecture/features/login/login_page.dart';
import 'package:flutter/material.dart';
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
      GoRoute(
          path: 'home',
          pageBuilder: (context, state) => transitionPage(const HomePage())),
      GoRoute(
          name: 'incomingCall',
          path: 'incomingCall',
          pageBuilder: (context, state) =>
              transitionPage(const IncomingCall())),
      GoRoute(
          name: 'outgoingCall',
          path: 'outgoingCall',
          pageBuilder: (context, state) =>
              transitionPage(const OutgoingCall())),
      GoRoute(
          name: 'callConnected',
          path: 'callConnected',
          pageBuilder: (context, state) =>
              transitionPage(const ConnectedCall())),
    ],
  ),
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
