import 'package:icomax/base/response_base.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_user.g.dart';

@JsonSerializable()
class ResponseUser extends ResponseBase{
  String token;
  String userInfo;
  String refeshToken;
  String expiredTime;
  int logoutTime;

  ResponseUser(this.token,this.userInfo,this.refeshToken,this.expiredTime,this.logoutTime);

  factory ResponseUser.fromJson(Map<String,dynamic> json) => _$ResponseUserFromJson(json);

  Map<String,dynamic> toJson() => _$ResponseUserToJson(this);
}