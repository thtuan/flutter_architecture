import 'package:architecture/blocs/auth/auth_cubit.dart';
import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/theme/theme_cubit.dart';
import 'package:architecture/repository/auth/auth_repository.dart';
import 'package:architecture/services/api/client/auth_client.dart';
import 'package:architecture/services/calling/socket_signal.dart';
import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

class App {
  App._();

  static final App instance = App._();

  // cubit
  ThemeCubit get themeCubit => _themeCubit;

  AuthCubit get authCubit => _authCubit;

  CallingCubit get callingCubit => _callingCubit;

  // client
  AuthClient get authClient => _authClient;

  // repository

  late final ThemeCubit _themeCubit;
  late final AuthCubit _authCubit;
  late final CallingCubit _callingCubit;

  late final AuthRepository _authRepository;

  late final AuthClient _authClient;

  void init() {
    _initLogging();
    _initApiClient();
    _initRepositories();
    _initBlocs();
    SocketSignal.instance.openConnection('ws://10.0.112.71:8080/ws');
  }

  void _initLogging() {
    Logger.root.clearListeners();
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      debugPrint(
          'Architecture=${record.object}=${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  void _initBlocs() {
    _themeCubit = ThemeCubit();
    _authCubit = AuthCubit(_authRepository);
    _callingCubit = CallingCubit()..startListenEvent();
  }

  void _initRepositories() {
    _authRepository = AuthRepository();
  }

  void _initApiClient() {
    _authClient = AuthClient(url: 'url');
  }
}
