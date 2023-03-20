import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(2.seconds).then((value) => context.go('/home'));
    return Stack(
      children: [
        Container(color: Colors.red),
        Center(
          child: Lottie.asset('assets/lotties/welcome.json'),
        ),
      ],
    );
  }
}
