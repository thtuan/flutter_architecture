part of 'app_cubit.dart';

abstract class AppInfo {
  Auth get auth;

  User get user;

  String? get lastRoutePath;
}

@freezed
class AppState with _$AppState {
  @Implements<AppInfo>()
  const factory AppState.initial({
    required Auth auth,
    required User user,
    String? lastRoutePath,
  }) = _Initial;

  //App Authenticated
  @Implements<AppInfo>()
  const factory AppState.inSession({
    required Auth auth,
    required User user,
    String? lastRoutePath,
  }) = _InSession;

  // App unauthenticated
  @Implements<AppInfo>()
  const factory AppState.outSession({
    required Auth auth,
    required User user,
    String? lastRoutePath,
  }) = _OutSession;

  // App got error
  @Implements<AppInfo>()
  const factory AppState.error({
    required Auth auth,
    required User user,
    required int code,
    required String message,
    String? lastRoutePath,
  }) = _Error;

  // App is inactivated
  @Implements<AppInfo>()
  const factory AppState.inactive({
    required Auth auth,
    required User user,
    String? lastRoutePath,
  }) = _Inactive;
}
