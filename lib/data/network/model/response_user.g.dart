// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseUser _$ResponseUserFromJson(Map<String, dynamic> json) {
  return ResponseUser()
    ..statusCode = json['statusCode'] as int
    ..message = json['message'] as String
    ..success = json['success'] as bool
    ..token = json['token'] as String
    ..userInfo = json['userInfo'] as String
    ..refeshToken = json['refeshToken'] as String
    ..expiredTime = json['expiredTime'] as String
    ..logoutTime = json['logoutTime'] as int;
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
