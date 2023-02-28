import 'package:architecture/features/app.dart';
import 'package:architecture/features/home/home_page.dart';
import 'package:architecture/features/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter =
    GoRouter(initialLocation: '/', navigatorKey: rootNavigatorKey, routes: [
  ShellRoute(
    pageBuilder: (context, state, child) =>
        transitionPage(AppWidget(child: child)),
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => transitionPage(const HomePage()),
        routes: [
          GoRoute(
              path: 'login',
              pageBuilder: (context, state) =>
                  transitionPage(const LoginPage())),
          GoRoute(
              path: 'home',
              pageBuilder: (context, state) =>
                  transitionPage(const HomePage())),
        ],
      ),
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
