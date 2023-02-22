import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.unAuthenticated() = UnAuthenticated;

  const factory AuthState.error({String? message}) = Error;
}
