import 'package:architecture/blocs/app/app_cubit.dart';
import 'package:architecture/features/error/error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class AppWidget extends StatefulWidget {
  final Widget child;

  const AppWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final logging = Logger('AppWidget');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AppCubit, AppState>(listener: (context, state) {
            state.map(initial: (state) {
              //TODO(TuanHT): do some thing with init App
            }, inactive: (state) {
              //TODO(TuanHT): do some thing when app deactive
            }, error: (state) {
              final code = state.code;
              switch (code) {
                case 100:
                  break;
                case 200:
                  break;
                case 300:
                  break;
                case 400:
                  break;
                case 500:
                  break;
                default:
                  // Fluttertoast.showToast(msg: state.message);
                  break;
              }
            }, inSession: (state) {
              final lastRoutePath = state.lastRoutePath;
              if (lastRoutePath != null) {
                context.go(lastRoutePath);
              } else {
                context.go('/home');
              }
            }, outSession: (state) {
              context.go('/login');
            });
          }),
        ],
        child: Scaffold(
            body: BlocBuilder<AppCubit, AppState>(builder: (context, state) {
          return Visibility(
              visible:
                  state.maybeMap(error: (error) => true, orElse: () => false),
              child: const ErrorPage());
        })));
  }
}
