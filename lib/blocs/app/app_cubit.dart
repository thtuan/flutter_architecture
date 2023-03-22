import 'package:architecture/blocs/app/app_event.dart';
import 'package:architecture/models/auth/auth.dart';
import 'package:architecture/models/user/user.dart';
import 'package:architecture/services/local_storage/local_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final LocalStorage localStorage = LocalStorage.instance;

  AppCubit()
      : super(AppState.initial(
            auth: Auth('assetToken', 'refreshToken'), user: const User())) {
    AppHandler.eventSubscription.listen((event) {
      event.map(
          showError: (showError) {},
          showToast: (showToast) {},
          showDialog: (showDialog) {},
          networkProblem: (networkProblem) {});
    });
  }

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
