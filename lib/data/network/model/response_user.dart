
class ResponseUser {
  String _token;
  String _userInfo;
  String _refeshToken;
  String _expiredTime;
  int _logoutTime;

  String get token => _token;
  String get userInfo => _userInfo;
  String get refeshToken => _refeshToken;
  String get expiredTime => _expiredTime;
  int get logoutTime => _logoutTime;

  ResponseUser({
    String token,
    String userInfo,
    String refeshToken,
    String expiredTime,
    int logoutTime}){
    _token = token;
    _userInfo = userInfo;
    _refeshToken = refeshToken;
    _expiredTime = expiredTime;
    _logoutTime = logoutTime;
  }

  ResponseUser.fromJson(dynamic json) {
    _token = json["token"];
    _userInfo = json["user_info"];
    _refeshToken = json["refesh_token"];
    _expiredTime = json["expired_time"];
    _logoutTime = json["logout_time"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["token"] = _token;
    map["user_info"] = _userInfo;
    map["refesh_token"] = _refeshToken;
    map["expired_time"] = _expiredTime;
    map["logout_time"] = _logoutTime;
    return map;
  }

}