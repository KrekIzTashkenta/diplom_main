
part of 'auth_cubit.dart';

_$AuthStateNotAuthorizedImpl _$$AuthStateNotAuthorizedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateNotAuthorizedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateNotAuthorizedImplToJson(
        _$AuthStateNotAuthorizedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateAuthorizedImpl _$$AuthStateAuthorizedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateAuthorizedImpl(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateAuthorizedImplToJson(
        _$AuthStateAuthorizedImpl instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };

_$AuthStateWaitingImpl _$$AuthStateWaitingImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStateWaitingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateWaitingImplToJson(
        _$AuthStateWaitingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateErrorImpl _$$AuthStateErrorImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateErrorImpl(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateErrorImplToJson(
        _$AuthStateErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
