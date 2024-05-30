part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthorized() = _AuthStateNotAuthorized;

  const factory AuthState.authorized(
    UserEntity userEntity,
  ) = _AuthStateAuthorized;

  const factory AuthState.waiting() = _AuthStateWaiting;

  const factory AuthState.error(dynamic error) = _AuthStateError;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
