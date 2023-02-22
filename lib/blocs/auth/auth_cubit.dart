import 'package:architecture/blocs/auth/auth_state.dart';
import 'package:architecture/repository/auth/auth_repository.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(const AuthState.unAuthenticated());

  void checkAuth() {
    Future.delayed(2.seconds)
        .then((value) => emit(const AuthState.authenticated()));
  }
}
