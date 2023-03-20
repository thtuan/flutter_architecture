import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
    );
    return Center(
      child: InkWell(
        onTap: () {
          context.read<CallingCubit>().makeCall();
        },
        child: Container(
            decoration: const ShapeDecoration(
                shape: CircleBorder(), color: Colors.orangeAccent),
            width: 100,
            height: 100,
            child: Center(
              child: const Text(
                'Call me, honey...',
                textAlign: TextAlign.center,
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shake(duration: 500.ms),
            )).animate(onPlay: (controller) {
          controller.repeat();
        }).scale(
            duration: 2.seconds,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1, 1)),
      ),
    );
  }
}
