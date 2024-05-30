// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntiryImpl _$$UserEntiryImplFromJson(Map<String, dynamic> json) =>
    _$UserEntiryImpl(
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      isAnonymous: json['isAnonymous'] as bool,
      phoneNumber: json['phoneNumber'] as String,
      photoURL: json['photoURL'] as String,
      refreshToken: json['refreshToken'] as String,
      tenantId: json['tenantId'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$UserEntiryImplToJson(_$UserEntiryImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'isAnonymous': instance.isAnonymous,
      'phoneNumber': instance.phoneNumber,
      'photoURL': instance.photoURL,
      'refreshToken': instance.refreshToken,
      'tenantId': instance.tenantId,
      'uid': instance.uid,
    };
