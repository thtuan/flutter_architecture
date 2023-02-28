import 'package:architecture/models/auth.dart';
import 'package:architecture/models/user.dart';
import 'package:architecture/repository/auth/auth_repository.dart';
import 'package:architecture/services/user/user_local_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final AuthRepository authRepository;
  final UserLocalStorage localStorage = UserLocalStorage.instance;

  AppCubit(this.authRepository)
      : super(AppState.initial(
            auth: Auth('assetToken', 'refreshToken'), user: User()));

  void checkSession() {
    //TODO(TuanHT): Checking from local and prepare for new session
  }

  void endCurrentSession(String currentRoutePath) {
    emit(AppState.outSession(
        auth: state.auth, user: state.user, lastRoutePath: currentRoutePath));
  }

  void hasNewSession() {
    emit(AppState.inSession(
        auth: state.auth,
        user: state.user,
        lastRoutePath: state.lastRoutePath));
  }

  void pushError(String message) {
    emit(AppState.error(
        auth: state.auth, user: state.user, code: 0, message: message));
  }
}
