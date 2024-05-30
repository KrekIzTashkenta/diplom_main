import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
  required String displayName,
  required String email,
  required bool emailVerified,
  required bool isAnonymous,
  required String phoneNumber,
  required String photoURL,
  required String refreshToken,
  required String tenantId,
  required String uid,
    @JsonKey(includeToJson: false, includeFromJson: false)
    AsyncSnapshot? userState,
  }) = _UserEntiry;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
