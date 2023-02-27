// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calling_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallingState {
  String? get remoteInformation => throw _privateConstructorUsedError;
  String? get localInformation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? remoteInformation, String? localInformation)
        idle,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        incomingCall,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        outgoingCall,
    required TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)
        callConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? remoteInformation, String? localInformation)?
        idle,
    TResult? Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult? Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult? Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? remoteInformation, String? localInformation)? idle,
    TResult Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_OutgoingCall value) outgoingCall,
    required TResult Function(_CallConnected value) callConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_OutgoingCall value)? outgoingCall,
    TResult? Function(_CallConnected value)? callConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_OutgoingCall value)? outgoingCall,
    TResult Function(_CallConnected value)? callConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallingStateCopyWith<CallingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallingStateCopyWith<$Res> {
  factory $CallingStateCopyWith(
          CallingState value, $Res Function(CallingState) then) =
      _$CallingStateCopyWithImpl<$Res, CallingState>;
  @useResult
  $Res call({String? remoteInformation, String? localInformation});
}

/// @nodoc
class _$CallingStateCopyWithImpl<$Res, $Val extends CallingState>
    implements $CallingStateCopyWith<$Res> {
  _$CallingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteInformation = freezed,
    Object? localInformation = freezed,
  }) {
    return _then(_value.copyWith(
      remoteInformation: freezed == remoteInformation
          ? _value.remoteInformation
          : remoteInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      localInformation: freezed == localInformation
          ? _value.localInformation
          : localInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $CallingStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? remoteInformation, String? localInformation});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$CallingStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteInformation = freezed,
    Object? localInformation = freezed,
  }) {
    return _then(_$_Idle(
      remoteInformation: freezed == remoteInformation
          ? _value.remoteInformation
          : remoteInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      localInformation: freezed == localInformation
          ? _value.localInformation
          : localInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.remoteInformation, this.localInformation});

  @override
  final String? remoteInformation;
  @override
  final String? localInformation;

  @override
  String toString() {
    return 'CallingState.idle(remoteInformation: $remoteInformation, localInformation: $localInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.remoteInformation, remoteInformation) ||
                other.remoteInformation == remoteInformation) &&
            (identical(other.localInformation, localInformation) ||
                other.localInformation == localInformation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, remoteInformation, localInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? remoteInformation, String? localInformation)
        idle,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        incomingCall,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        outgoingCall,
    required TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)
        callConnected,
  }) {
    return idle(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? remoteInformation, String? localInformation)?
        idle,
    TResult? Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult? Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult? Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
  }) {
    return idle?.call(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? remoteInformation, String? localInformation)? idle,
    TResult Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(remoteInformation, localInformation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_OutgoingCall value) outgoingCall,
    required TResult Function(_CallConnected value) callConnected,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_OutgoingCall value)? outgoingCall,
    TResult? Function(_CallConnected value)? callConnected,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_OutgoingCall value)? outgoingCall,
    TResult Function(_CallConnected value)? callConnected,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements CallingState {
  const factory _Idle(
      {final String? remoteInformation,
      final String? localInformation}) = _$_Idle;

  @override
  String? get remoteInformation;
  @override
  String? get localInformation;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncomingCallCopyWith<$Res>
    implements $CallingStateCopyWith<$Res> {
  factory _$$_IncomingCallCopyWith(
          _$_IncomingCall value, $Res Function(_$_IncomingCall) then) =
      __$$_IncomingCallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? remoteInformation, String? localInformation});
}

/// @nodoc
class __$$_IncomingCallCopyWithImpl<$Res>
    extends _$CallingStateCopyWithImpl<$Res, _$_IncomingCall>
    implements _$$_IncomingCallCopyWith<$Res> {
  __$$_IncomingCallCopyWithImpl(
      _$_IncomingCall _value, $Res Function(_$_IncomingCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteInformation = freezed,
    Object? localInformation = freezed,
  }) {
    return _then(_$_IncomingCall(
      remoteInformation: freezed == remoteInformation
          ? _value.remoteInformation
          : remoteInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      localInformation: freezed == localInformation
          ? _value.localInformation
          : localInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_IncomingCall implements _IncomingCall {
  const _$_IncomingCall({this.remoteInformation, this.localInformation});

  @override
  final String? remoteInformation;
  @override
  final String? localInformation;

  @override
  String toString() {
    return 'CallingState.incomingCall(remoteInformation: $remoteInformation, localInformation: $localInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomingCall &&
            (identical(other.remoteInformation, remoteInformation) ||
                other.remoteInformation == remoteInformation) &&
            (identical(other.localInformation, localInformation) ||
                other.localInformation == localInformation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, remoteInformation, localInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomingCallCopyWith<_$_IncomingCall> get copyWith =>
      __$$_IncomingCallCopyWithImpl<_$_IncomingCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? remoteInformation, String? localInformation)
        idle,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        incomingCall,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        outgoingCall,
    required TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)
        callConnected,
  }) {
    return incomingCall(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? remoteInformation, String? localInformation)?
        idle,
    TResult? Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult? Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult? Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
  }) {
    return incomingCall?.call(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? remoteInformation, String? localInformation)? idle,
    TResult Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
    required TResult orElse(),
  }) {
    if (incomingCall != null) {
      return incomingCall(remoteInformation, localInformation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_OutgoingCall value) outgoingCall,
    required TResult Function(_CallConnected value) callConnected,
  }) {
    return incomingCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_OutgoingCall value)? outgoingCall,
    TResult? Function(_CallConnected value)? callConnected,
  }) {
    return incomingCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_OutgoingCall value)? outgoingCall,
    TResult Function(_CallConnected value)? callConnected,
    required TResult orElse(),
  }) {
    if (incomingCall != null) {
      return incomingCall(this);
    }
    return orElse();
  }
}

abstract class _IncomingCall implements CallingState {
  const factory _IncomingCall(
      {final String? remoteInformation,
      final String? localInformation}) = _$_IncomingCall;

  @override
  String? get remoteInformation;
  @override
  String? get localInformation;
  @override
  @JsonKey(ignore: true)
  _$$_IncomingCallCopyWith<_$_IncomingCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OutgoingCallCopyWith<$Res>
    implements $CallingStateCopyWith<$Res> {
  factory _$$_OutgoingCallCopyWith(
          _$_OutgoingCall value, $Res Function(_$_OutgoingCall) then) =
      __$$_OutgoingCallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? remoteInformation, String? localInformation});
}

/// @nodoc
class __$$_OutgoingCallCopyWithImpl<$Res>
    extends _$CallingStateCopyWithImpl<$Res, _$_OutgoingCall>
    implements _$$_OutgoingCallCopyWith<$Res> {
  __$$_OutgoingCallCopyWithImpl(
      _$_OutgoingCall _value, $Res Function(_$_OutgoingCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteInformation = freezed,
    Object? localInformation = freezed,
  }) {
    return _then(_$_OutgoingCall(
      remoteInformation: freezed == remoteInformation
          ? _value.remoteInformation
          : remoteInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      localInformation: freezed == localInformation
          ? _value.localInformation
          : localInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OutgoingCall implements _OutgoingCall {
  const _$_OutgoingCall({this.remoteInformation, this.localInformation});

  @override
  final String? remoteInformation;
  @override
  final String? localInformation;

  @override
  String toString() {
    return 'CallingState.outgoingCall(remoteInformation: $remoteInformation, localInformation: $localInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutgoingCall &&
            (identical(other.remoteInformation, remoteInformation) ||
                other.remoteInformation == remoteInformation) &&
            (identical(other.localInformation, localInformation) ||
                other.localInformation == localInformation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, remoteInformation, localInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutgoingCallCopyWith<_$_OutgoingCall> get copyWith =>
      __$$_OutgoingCallCopyWithImpl<_$_OutgoingCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? remoteInformation, String? localInformation)
        idle,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        incomingCall,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        outgoingCall,
    required TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)
        callConnected,
  }) {
    return outgoingCall(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? remoteInformation, String? localInformation)?
        idle,
    TResult? Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult? Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult? Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
  }) {
    return outgoingCall?.call(remoteInformation, localInformation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? remoteInformation, String? localInformation)? idle,
    TResult Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
    required TResult orElse(),
  }) {
    if (outgoingCall != null) {
      return outgoingCall(remoteInformation, localInformation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_OutgoingCall value) outgoingCall,
    required TResult Function(_CallConnected value) callConnected,
  }) {
    return outgoingCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_OutgoingCall value)? outgoingCall,
    TResult? Function(_CallConnected value)? callConnected,
  }) {
    return outgoingCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_OutgoingCall value)? outgoingCall,
    TResult Function(_CallConnected value)? callConnected,
    required TResult orElse(),
  }) {
    if (outgoingCall != null) {
      return outgoingCall(this);
    }
    return orElse();
  }
}

abstract class _OutgoingCall implements CallingState {
  const factory _OutgoingCall(
      {final String? remoteInformation,
      final String? localInformation}) = _$_OutgoingCall;

  @override
  String? get remoteInformation;
  @override
  String? get localInformation;
  @override
  @JsonKey(ignore: true)
  _$$_OutgoingCallCopyWith<_$_OutgoingCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CallConnectedCopyWith<$Res>
    implements $CallingStateCopyWith<$Res> {
  factory _$$_CallConnectedCopyWith(
          _$_CallConnected value, $Res Function(_$_CallConnected) then) =
      __$$_CallConnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MediaStream localStream,
      List<MediaStream> remoteStreams,
      String? remoteInformation,
      String? localInformation,
      bool enableCamera,
      bool enableSpeaker});
}

/// @nodoc
class __$$_CallConnectedCopyWithImpl<$Res>
    extends _$CallingStateCopyWithImpl<$Res, _$_CallConnected>
    implements _$$_CallConnectedCopyWith<$Res> {
  __$$_CallConnectedCopyWithImpl(
      _$_CallConnected _value, $Res Function(_$_CallConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localStream = null,
    Object? remoteStreams = null,
    Object? remoteInformation = freezed,
    Object? localInformation = freezed,
    Object? enableCamera = null,
    Object? enableSpeaker = null,
  }) {
    return _then(_$_CallConnected(
      localStream: null == localStream
          ? _value.localStream
          : localStream // ignore: cast_nullable_to_non_nullable
              as MediaStream,
      remoteStreams: null == remoteStreams
          ? _value._remoteStreams
          : remoteStreams // ignore: cast_nullable_to_non_nullable
              as List<MediaStream>,
      remoteInformation: freezed == remoteInformation
          ? _value.remoteInformation
          : remoteInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      localInformation: freezed == localInformation
          ? _value.localInformation
          : localInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      enableCamera: null == enableCamera
          ? _value.enableCamera
          : enableCamera // ignore: cast_nullable_to_non_nullable
              as bool,
      enableSpeaker: null == enableSpeaker
          ? _value.enableSpeaker
          : enableSpeaker // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CallConnected implements _CallConnected {
  const _$_CallConnected(
      {required this.localStream,
      required final List<MediaStream> remoteStreams,
      this.remoteInformation,
      this.localInformation,
      required this.enableCamera,
      required this.enableSpeaker})
      : _remoteStreams = remoteStreams;

  @override
  final MediaStream localStream;
  final List<MediaStream> _remoteStreams;
  @override
  List<MediaStream> get remoteStreams {
    if (_remoteStreams is EqualUnmodifiableListView) return _remoteStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remoteStreams);
  }

  @override
  final String? remoteInformation;
  @override
  final String? localInformation;
  @override
  final bool enableCamera;
  @override
  final bool enableSpeaker;

  @override
  String toString() {
    return 'CallingState.callConnected(localStream: $localStream, remoteStreams: $remoteStreams, remoteInformation: $remoteInformation, localInformation: $localInformation, enableCamera: $enableCamera, enableSpeaker: $enableSpeaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallConnected &&
            (identical(other.localStream, localStream) ||
                other.localStream == localStream) &&
            const DeepCollectionEquality()
                .equals(other._remoteStreams, _remoteStreams) &&
            (identical(other.remoteInformation, remoteInformation) ||
                other.remoteInformation == remoteInformation) &&
            (identical(other.localInformation, localInformation) ||
                other.localInformation == localInformation) &&
            (identical(other.enableCamera, enableCamera) ||
                other.enableCamera == enableCamera) &&
            (identical(other.enableSpeaker, enableSpeaker) ||
                other.enableSpeaker == enableSpeaker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      localStream,
      const DeepCollectionEquality().hash(_remoteStreams),
      remoteInformation,
      localInformation,
      enableCamera,
      enableSpeaker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallConnectedCopyWith<_$_CallConnected> get copyWith =>
      __$$_CallConnectedCopyWithImpl<_$_CallConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? remoteInformation, String? localInformation)
        idle,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        incomingCall,
    required TResult Function(
            String? remoteInformation, String? localInformation)
        outgoingCall,
    required TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)
        callConnected,
  }) {
    return callConnected(localStream, remoteStreams, remoteInformation,
        localInformation, enableCamera, enableSpeaker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? remoteInformation, String? localInformation)?
        idle,
    TResult? Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult? Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult? Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
  }) {
    return callConnected?.call(localStream, remoteStreams, remoteInformation,
        localInformation, enableCamera, enableSpeaker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? remoteInformation, String? localInformation)? idle,
    TResult Function(String? remoteInformation, String? localInformation)?
        incomingCall,
    TResult Function(String? remoteInformation, String? localInformation)?
        outgoingCall,
    TResult Function(
            MediaStream localStream,
            List<MediaStream> remoteStreams,
            String? remoteInformation,
            String? localInformation,
            bool enableCamera,
            bool enableSpeaker)?
        callConnected,
    required TResult orElse(),
  }) {
    if (callConnected != null) {
      return callConnected(localStream, remoteStreams, remoteInformation,
          localInformation, enableCamera, enableSpeaker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_IncomingCall value) incomingCall,
    required TResult Function(_OutgoingCall value) outgoingCall,
    required TResult Function(_CallConnected value) callConnected,
  }) {
    return callConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_IncomingCall value)? incomingCall,
    TResult? Function(_OutgoingCall value)? outgoingCall,
    TResult? Function(_CallConnected value)? callConnected,
  }) {
    return callConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_IncomingCall value)? incomingCall,
    TResult Function(_OutgoingCall value)? outgoingCall,
    TResult Function(_CallConnected value)? callConnected,
    required TResult orElse(),
  }) {
    if (callConnected != null) {
      return callConnected(this);
    }
    return orElse();
  }
}

abstract class _CallConnected implements CallingState {
  const factory _CallConnected(
      {required final MediaStream localStream,
      required final List<MediaStream> remoteStreams,
      final String? remoteInformation,
      final String? localInformation,
      required final bool enableCamera,
      required final bool enableSpeaker}) = _$_CallConnected;

  MediaStream get localStream;
  List<MediaStream> get remoteStreams;
  @override
  String? get remoteInformation;
  @override
  String? get localInformation;
  bool get enableCamera;
  bool get enableSpeaker;
  @override
  @JsonKey(ignore: true)
  _$$_CallConnectedCopyWith<_$_CallConnected> get copyWith =>
      throw _privateConstructorUsedError;
}
