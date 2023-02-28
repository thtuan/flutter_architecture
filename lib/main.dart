import 'package:architecture/app/app.dart';
import 'package:architecture/blocs/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/router.dart';
import 'blocs/theme/theme_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  App.instance.init();
  final app = App.instance;
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => app.appCubit),
    BlocProvider(create: (_) => app.callingCubit),
    BlocProvider(create: (_) => app.themeCubit),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return MaterialApp.router(
        title: 'Architecture demo and flow',
        theme: state.themeData,
        routerConfig: appRouter,
      );
    });
  }
}
