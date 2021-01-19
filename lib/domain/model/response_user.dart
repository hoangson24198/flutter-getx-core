
class ResponseUser {
  String _token;
  String _userInfo;

  String get token => _token;
  String get userInfo => _userInfo;

  ResponseUser({
      String token, 
      String userInfo}){
    _token = token;
    _userInfo = userInfo;
}

  ResponseUser.fromJson(dynamic json) {
    _token = json["token"];
    _userInfo = json["user_info"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["token"] = _token;
    map["user_info"] = _userInfo;
    return map;
  }

}