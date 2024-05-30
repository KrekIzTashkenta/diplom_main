
part of 'auth_cubit.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notAuthorized':
      return _AuthStateNotAuthorized.fromJson(json);
    case 'authorized':
      return _AuthStateAuthorized.fromJson(json);
    case 'waiting':
      return _AuthStateWaiting.fromJson(json);
    case 'error':
      return _AuthStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateWaiting value)? waiting,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateNotAuthorizedImplCopyWith<$Res> {
  factory _$$AuthStateNotAuthorizedImplCopyWith(
          _$AuthStateNotAuthorizedImpl value,
          $Res Function(_$AuthStateNotAuthorizedImpl) then) =
      __$$AuthStateNotAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateNotAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateNotAuthorizedImpl>
    implements _$$AuthStateNotAuthorizedImplCopyWith<$Res> {
  __$$AuthStateNotAuthorizedImplCopyWithImpl(
      _$AuthStateNotAuthorizedImpl _value,
      $Res Function(_$AuthStateNotAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateNotAuthorizedImpl implements _AuthStateNotAuthorized {
  const _$AuthStateNotAuthorizedImpl({final String? $type})
      : $type = $type ?? 'notAuthorized';

  factory _$AuthStateNotAuthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateNotAuthorizedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateNotAuthorizedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateWaiting value)? waiting,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateNotAuthorizedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateNotAuthorized implements AuthState {
  const factory _AuthStateNotAuthorized() = _$AuthStateNotAuthorizedImpl;

  factory _AuthStateNotAuthorized.fromJson(Map<String, dynamic> json) =
      _$AuthStateNotAuthorizedImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateAuthorizedImplCopyWith<$Res> {
  factory _$$AuthStateAuthorizedImplCopyWith(_$AuthStateAuthorizedImpl value,
          $Res Function(_$AuthStateAuthorizedImpl) then) =
      __$$AuthStateAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});
}

/// @nodoc
class __$$AuthStateAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthorizedImpl>
    implements _$$AuthStateAuthorizedImplCopyWith<$Res> {
  __$$AuthStateAuthorizedImplCopyWithImpl(_$AuthStateAuthorizedImpl _value,
      $Res Function(_$AuthStateAuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = freezed,
  }) {
    return _then(_$AuthStateAuthorizedImpl(
      freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateAuthorizedImpl implements _AuthStateAuthorized {
  const _$AuthStateAuthorizedImpl(this.userEntity, {final String? $type})
      : $type = $type ?? 'authorized';

  factory _$AuthStateAuthorizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateAuthorizedImplFromJson(json);

  @override
  final UserEntity userEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthorizedImpl &&
            const DeepCollectionEquality()
                .equals(other.userEntity, userEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthorizedImplCopyWith<_$AuthStateAuthorizedImpl> get copyWith =>
      __$$AuthStateAuthorizedImplCopyWithImpl<_$AuthStateAuthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return authorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return authorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateWaiting value)? waiting,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateAuthorizedImplToJson(
      this,
    );
  }
}

abstract class _AuthStateAuthorized implements AuthState {
  const factory _AuthStateAuthorized(final UserEntity userEntity) =
      _$AuthStateAuthorizedImpl;

  factory _AuthStateAuthorized.fromJson(Map<String, dynamic> json) =
      _$AuthStateAuthorizedImpl.fromJson;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$AuthStateAuthorizedImplCopyWith<_$AuthStateAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateWaitingImplCopyWith<$Res> {
  factory _$$AuthStateWaitingImplCopyWith(_$AuthStateWaitingImpl value,
          $Res Function(_$AuthStateWaitingImpl) then) =
      __$$AuthStateWaitingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateWaitingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateWaitingImpl>
    implements _$$AuthStateWaitingImplCopyWith<$Res> {
  __$$AuthStateWaitingImplCopyWithImpl(_$AuthStateWaitingImpl _value,
      $Res Function(_$AuthStateWaitingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateWaitingImpl implements _AuthStateWaiting {
  const _$AuthStateWaitingImpl({final String? $type})
      : $type = $type ?? 'waiting';

  factory _$AuthStateWaitingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateWaitingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.waiting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateWaitingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateWaiting value)? waiting,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateWaitingImplToJson(
      this,
    );
  }
}

abstract class _AuthStateWaiting implements AuthState {
  const factory _AuthStateWaiting() = _$AuthStateWaitingImpl;

  factory _AuthStateWaiting.fromJson(Map<String, dynamic> json) =
      _$AuthStateWaitingImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthStateErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateErrorImpl implements _AuthStateError {
  const _$AuthStateErrorImpl(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$AuthStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateErrorImplFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthStateAuthorized value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthStateAuthorized value)? authorized,
    TResult? Function(_AuthStateWaiting value)? waiting,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthStateAuthorized value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateErrorImplToJson(
      this,
    );
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError(final dynamic error) = _$AuthStateErrorImpl;

  factory _AuthStateError.fromJson(Map<String, dynamic> json) =
      _$AuthStateErrorImpl.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
