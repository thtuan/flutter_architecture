import 'package:architecture/app/app.dart';
import 'package:architecture/blocs/app/app_cubit.dart';
import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/theme/theme_cubit.dart';
import 'package:architecture/repository/auth_repository.dart';
import 'package:architecture/repository/user_respository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/router.dart';
import 'blocs/theme/theme_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment('ENV');
  debugPrint(
      '\n\n\n ==================== Running on $env environment ================== \n\n\n');
  App.init(env.toEnv());

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(create: (_) => AuthRepository()),
      RepositoryProvider(
        create: (_) => UserRepository(),
      )
    ],
    child: MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => AppCubit(context.read<AuthRepository>())),
      BlocProvider(create: (_) => CallingCubit()),
      BlocProvider(create: (_) => ThemeCubit()),
    ], child: const MyApp()),
  ));
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
