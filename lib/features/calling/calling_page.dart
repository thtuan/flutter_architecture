import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:permission_handler/permission_handler.dart';

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
  bool enableCamera = false;
  bool enableMicrophone = false;
  bool waitingPermission = true;

  @override
  void initState() {
    super.initState();
    checkPermission().then((value) {
      if (value) {
        setState(() {
          waitingPermission = false;
        });
      }
    });
  }

  Future<bool> checkPermission() async {
    final camera = await Permission.camera.request();
    final mic = await Permission.microphone.request();
    return camera.isGranted && mic.isGranted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: waitingPermission
          ? const Center(child: Text('Waiting permission...'))
          : Stack(fit: StackFit.expand, children: [
              Container(
                color: Colors.green,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Incoming call...'),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CallingCubit>().answer();
                      },
                      child: const Text('Answer')),
                ],
              ),
            ]),
    );
  }
}

class ConnectedCall extends StatefulWidget {
  const ConnectedCall({Key? key}) : super(key: key);

  @override
  State<ConnectedCall> createState() => _ConnectedCallState();
}

class _ConnectedCallState extends State<ConnectedCall> {
  late final CallingCubit _callingCubit;

  @override
  void initState() {
    _callingCubit = context.read<CallingCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<CallingCubit, CallingState>(
      builder: (context, state) {
        return state.maybeMap(callConnected: (value) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: Colors.yellow,
              ),
              Align(
                alignment: const Alignment(0.9, -0.85),
                child: Container(
                    width: 90,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: RTCVideoView(
                      value.localRenderer,
                      mirror: true,
                      objectFit:
                          RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                    )),
              ),
              RTCVideoView(
                value.remoteRenderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              ),
            ],
          );
        }, orElse: () {
          return Container();
        });
      },
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
