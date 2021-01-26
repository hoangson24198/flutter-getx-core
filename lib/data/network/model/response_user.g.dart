// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUser _$ResponseUserFromJson(Map<String, dynamic> json) {
  return ResponseUser(
    json['token'] as String,
    json['userInfo'] as String,
    json['refeshToken'] as String,
    json['expiredTime'] as String,
    json['logoutTime'] as int,
  )
    ..statusCode = json['statusCode'] as int
    ..message = json['message'] as String
    ..success = json['success'] as bool;
}

Map<String, dynamic> _$ResponseUserToJson(ResponseUser instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'success': instance.success,
      'token': instance.token,
      'userInfo': instance.userInfo,
      'refeshToken': instance.refeshToken,
      'expiredTime': instance.expiredTime,
      'logoutTime': instance.logoutTime,
    };
