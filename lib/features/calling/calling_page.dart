import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:lottie/lottie.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({Key? key}) : super(key: key);

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class IdleCall extends StatelessWidget {
  const IdleCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class OutgoingCall extends StatelessWidget {
  const OutgoingCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Calling')));
  }
}

class IncomingCall extends StatefulWidget {
  const IncomingCall({Key? key}) : super(key: key);

  @override
  State<IncomingCall> createState() => _IncomingCallState();
}

class _IncomingCallState extends State<IncomingCall> {
  final _log = Logger('_IncomingCallState');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          color: Colors.blue,
        ),
        Center(
          child: WaveAnimated(
            child: Lottie.asset('assets/lotties/home.json'),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RawMaterialButton(
                onPressed: () {
                  _log.info('hangUp');
                  context.read<CallingCubit>().hangUp();
                },
                elevation: 2.0,
                fillColor: Colors.red,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.phone_disabled_rounded,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  context.read<CallingCubit>().answer();
                },
                elevation: 2.0,
                fillColor: Colors.green,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.phone,
                  size: 35.0,
                  color: Colors.white,
                ),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shake(duration: 500.ms)
            ],
          ),
        ),
      ]),
    );
  }
}

class WaveAnimated extends StatefulWidget {
  final Widget? child;

  const WaveAnimated({Key? key, this.child}) : super(key: key);

  @override
  State<WaveAnimated> createState() => _WaveAnimatedState();
}

class _WaveAnimatedState extends State<WaveAnimated>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration:
            const ShapeDecoration(color: Colors.white, shape: CircleBorder()),
      )
          .animate(onPlay: (controller) => controller.repeat())
          .fadeOut(duration: 3.seconds)
          .scale(
              duration: 3.seconds,
              begin: const Offset(0, 0),
              end: const Offset(0.5, 0.5)),
      Container(
        decoration:
            const ShapeDecoration(color: Colors.white, shape: CircleBorder()),
      )
          .animate(
              delay: 1.seconds, onPlay: (controller) => controller.repeat())
          .fadeOut(duration: 3.seconds)
          .scale(
              duration: 3.seconds,
              begin: const Offset(0, 0),
              end: const Offset(0.5, 0.5)),
      Container(
        decoration:
            const ShapeDecoration(color: Colors.white, shape: CircleBorder()),
      )
          .animate(
              delay: 2.seconds, onPlay: (controller) => controller.repeat())
          .fadeOut(duration: 3.seconds)
          .scale(
              duration: 3.seconds,
              begin: const Offset(0, 0),
              end: const Offset(0.5, 0.5)),
      Center(
        child: Container(
          decoration:
              const ShapeDecoration(color: Colors.white, shape: CircleBorder()),
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          child: widget.child,
        ),
      )
    ]);
  }
}
