// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  Auth get auth => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String? get lastRoutePath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Auth auth, User user, String? lastRoutePath});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth auth, User user, String? lastRoutePath});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_$_Initial(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.auth, required this.user, this.lastRoutePath});

  @override
  final Auth auth;
  @override
  final User user;
  @override
  final String? lastRoutePath;

  @override
  String toString() {
    return 'AppState.initial(auth: $auth, user: $user, lastRoutePath: $lastRoutePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.lastRoutePath, lastRoutePath) ||
                other.lastRoutePath == lastRoutePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, user, lastRoutePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) {
    return initial(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) {
    return initial?.call(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(auth, user, lastRoutePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState, AppInfo {
  const factory _Initial(
      {required final Auth auth,
      required final User user,
      final String? lastRoutePath}) = _$_Initial;

  @override
  Auth get auth;
  @override
  User get user;
  @override
  String? get lastRoutePath;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InSessionCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_InSessionCopyWith(
          _$_InSession value, $Res Function(_$_InSession) then) =
      __$$_InSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth auth, User user, String? lastRoutePath});
}

/// @nodoc
class __$$_InSessionCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_InSession>
    implements _$$_InSessionCopyWith<$Res> {
  __$$_InSessionCopyWithImpl(
      _$_InSession _value, $Res Function(_$_InSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_$_InSession(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InSession implements _InSession {
  const _$_InSession(
      {required this.auth, required this.user, this.lastRoutePath});

  @override
  final Auth auth;
  @override
  final User user;
  @override
  final String? lastRoutePath;

  @override
  String toString() {
    return 'AppState.inSession(auth: $auth, user: $user, lastRoutePath: $lastRoutePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InSession &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.lastRoutePath, lastRoutePath) ||
                other.lastRoutePath == lastRoutePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, user, lastRoutePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InSessionCopyWith<_$_InSession> get copyWith =>
      __$$_InSessionCopyWithImpl<_$_InSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) {
    return inSession(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) {
    return inSession?.call(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) {
    if (inSession != null) {
      return inSession(auth, user, lastRoutePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) {
    return inSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) {
    return inSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (inSession != null) {
      return inSession(this);
    }
    return orElse();
  }
}

abstract class _InSession implements AppState, AppInfo {
  const factory _InSession(
      {required final Auth auth,
      required final User user,
      final String? lastRoutePath}) = _$_InSession;

  @override
  Auth get auth;
  @override
  User get user;
  @override
  String? get lastRoutePath;
  @override
  @JsonKey(ignore: true)
  _$$_InSessionCopyWith<_$_InSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OutSessionCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_OutSessionCopyWith(
          _$_OutSession value, $Res Function(_$_OutSession) then) =
      __$$_OutSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth auth, User user, String? lastRoutePath});
}

/// @nodoc
class __$$_OutSessionCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_OutSession>
    implements _$$_OutSessionCopyWith<$Res> {
  __$$_OutSessionCopyWithImpl(
      _$_OutSession _value, $Res Function(_$_OutSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_$_OutSession(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OutSession implements _OutSession {
  const _$_OutSession(
      {required this.auth, required this.user, this.lastRoutePath});

  @override
  final Auth auth;
  @override
  final User user;
  @override
  final String? lastRoutePath;

  @override
  String toString() {
    return 'AppState.outSession(auth: $auth, user: $user, lastRoutePath: $lastRoutePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutSession &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.lastRoutePath, lastRoutePath) ||
                other.lastRoutePath == lastRoutePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, user, lastRoutePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutSessionCopyWith<_$_OutSession> get copyWith =>
      __$$_OutSessionCopyWithImpl<_$_OutSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) {
    return outSession(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) {
    return outSession?.call(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) {
    if (outSession != null) {
      return outSession(auth, user, lastRoutePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) {
    return outSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) {
    return outSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (outSession != null) {
      return outSession(this);
    }
    return orElse();
  }
}

abstract class _OutSession implements AppState, AppInfo {
  const factory _OutSession(
      {required final Auth auth,
      required final User user,
      final String? lastRoutePath}) = _$_OutSession;

  @override
  Auth get auth;
  @override
  User get user;
  @override
  String? get lastRoutePath;
  @override
  @JsonKey(ignore: true)
  _$$_OutSessionCopyWith<_$_OutSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Auth auth, User user, int code, String message, String? lastRoutePath});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? code = null,
    Object? message = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_$_Error(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.auth,
      required this.user,
      required this.code,
      required this.message,
      this.lastRoutePath});

  @override
  final Auth auth;
  @override
  final User user;
  @override
  final int code;
  @override
  final String message;
  @override
  final String? lastRoutePath;

  @override
  String toString() {
    return 'AppState.error(auth: $auth, user: $user, code: $code, message: $message, lastRoutePath: $lastRoutePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.lastRoutePath, lastRoutePath) ||
                other.lastRoutePath == lastRoutePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, auth, user, code, message, lastRoutePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) {
    return error(auth, user, code, message, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) {
    return error?.call(auth, user, code, message, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(auth, user, code, message, lastRoutePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AppState, AppInfo {
  const factory _Error(
      {required final Auth auth,
      required final User user,
      required final int code,
      required final String message,
      final String? lastRoutePath}) = _$_Error;

  @override
  Auth get auth;
  @override
  User get user;
  int get code;
  String get message;
  @override
  String? get lastRoutePath;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InactiveCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_InactiveCopyWith(
          _$_Inactive value, $Res Function(_$_Inactive) then) =
      __$$_InactiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Auth auth, User user, String? lastRoutePath});
}

/// @nodoc
class __$$_InactiveCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Inactive>
    implements _$$_InactiveCopyWith<$Res> {
  __$$_InactiveCopyWithImpl(
      _$_Inactive _value, $Res Function(_$_Inactive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? user = null,
    Object? lastRoutePath = freezed,
  }) {
    return _then(_$_Inactive(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      lastRoutePath: freezed == lastRoutePath
          ? _value.lastRoutePath
          : lastRoutePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Inactive implements _Inactive {
  const _$_Inactive(
      {required this.auth, required this.user, this.lastRoutePath});

  @override
  final Auth auth;
  @override
  final User user;
  @override
  final String? lastRoutePath;

  @override
  String toString() {
    return 'AppState.inactive(auth: $auth, user: $user, lastRoutePath: $lastRoutePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inactive &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.lastRoutePath, lastRoutePath) ||
                other.lastRoutePath == lastRoutePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, user, lastRoutePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InactiveCopyWith<_$_Inactive> get copyWith =>
      __$$_InactiveCopyWithImpl<_$_Inactive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        initial,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inSession,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        outSession,
    required TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)
        error,
    required TResult Function(Auth auth, User user, String? lastRoutePath)
        inactive,
  }) {
    return inactive(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult? Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult? Function(Auth auth, User user, String? lastRoutePath)? inactive,
  }) {
    return inactive?.call(auth, user, lastRoutePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, User user, String? lastRoutePath)? initial,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inSession,
    TResult Function(Auth auth, User user, String? lastRoutePath)? outSession,
    TResult Function(Auth auth, User user, int code, String message,
            String? lastRoutePath)?
        error,
    TResult Function(Auth auth, User user, String? lastRoutePath)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(auth, user, lastRoutePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InSession value) inSession,
    required TResult Function(_OutSession value) outSession,
    required TResult Function(_Error value) error,
    required TResult Function(_Inactive value) inactive,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InSession value)? inSession,
    TResult? Function(_OutSession value)? outSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_Inactive value)? inactive,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InSession value)? inSession,
    TResult Function(_OutSession value)? outSession,
    TResult Function(_Error value)? error,
    TResult Function(_Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class _Inactive implements AppState, AppInfo {
  const factory _Inactive(
      {required final Auth auth,
      required final User user,
      final String? lastRoutePath}) = _$_Inactive;

  @override
  Auth get auth;
  @override
  User get user;
  @override
  String? get lastRoutePath;
  @override
  @JsonKey(ignore: true)
  _$$_InactiveCopyWith<_$_Inactive> get copyWith =>
      throw _privateConstructorUsedError;
}
