import 'package:architecture/blocs/app/app_cubit.dart';
import 'package:architecture/blocs/calling/calling_cubit.dart';
import 'package:architecture/blocs/theme/theme_cubit.dart';
import 'package:architecture/repository/auth/auth_repository.dart';
import 'package:architecture/services/api/client/auth_client.dart';

class App {
  App._();

  static final App instance = App._();

  AppCubit get appCubit => _appCubit;

  // cubit
  ThemeCubit get themeCubit => _themeCubit;

  CallingCubit get callingCubit => _callingCubit;

  // client
  AuthClient get authClient => _authClient;

  // repository
  late final AppCubit _appCubit;
  late final ThemeCubit _themeCubit;
  late final CallingCubit _callingCubit;

  late final AuthRepository _authRepository;

  late final AuthClient _authClient;

  void init() {
    _initApiClient();
    _initRepositories();
    _initBlocs();
    _initSocket();
  }

  void _initSocket() {
    // SocketSignal.instance.openConnection('ws://localhost:8080/ws');
  }

  void _initBlocs() {
    _appCubit = AppCubit(_authRepository)..checkSession();
    _themeCubit = ThemeCubit();
    _callingCubit = CallingCubit()..startListenEvent();
  }

  void _initRepositories() {
    _authRepository = AuthRepository();
  }

  void _initApiClient() {}
}
