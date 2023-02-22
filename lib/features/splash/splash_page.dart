import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        Container(color: Colors.white),
        Center(
          child: Lottie.asset('assets/lotties/welcome.json'),
        ),
      ],
    );
  }
}
