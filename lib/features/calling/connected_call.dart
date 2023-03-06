import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/calling/calling_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:logger/logger.dart';

class ConnectedCall extends StatefulWidget {
  const ConnectedCall({Key? key}) : super(key: key);

  @override
  State<ConnectedCall> createState() => _ConnectedCallState();
}

class _ConnectedCallState extends State<ConnectedCall> {
  final _log = Logger();
  RTCVideoRenderer localVideoRenderer = RTCVideoRenderer();
  RTCVideoRenderer remoteVideoRenderer = RTCVideoRenderer();

  MediaStream? localStream;
  List<MediaStream?>? remoteStream;

  @override
  void initState() {
    initRenderers();
    super.initState();
  }

  Future<void> initRenderers() async {
    await localVideoRenderer.initialize();
    await remoteVideoRenderer.initialize();
    localVideoRenderer.srcObject = localStream;
    remoteVideoRenderer.srcObject = remoteStream?.first;
    setState(() {});
  }

  @override
  deactivate() {
    _log.i('deactivate');
    super.deactivate();
    localVideoRenderer.dispose();
    remoteVideoRenderer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<CallingCubit, CallingState>(
      builder: (context, state) {
        return state.maybeMap(callConnected: (value) {
          remoteStream = value.remoteStreams;
          localStream = value.localStream;
          return Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: Colors.yellow,
              ),
              RTCVideoView(
                remoteVideoRenderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                placeholderBuilder: (context) => Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Remote'),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.9, -0.85),
                child: Container(
                    width: 90,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)),
                    child: RTCVideoView(
                      localVideoRenderer,
                      mirror: true,
                      objectFit:
                          RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                      placeholderBuilder: (context) => Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text('Local'),
                        ),
                      ),
                    )),
              ),
              Align(
                alignment: const Alignment(0, 0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                      onPressed: () {
                        _log.i('hangUp');
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
                  ],
                ),
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
