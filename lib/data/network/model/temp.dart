/// success : true
/// data : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYXRtYW5ldWxlciIsImlzX3N5c3RlbV9hZG1pbiI6IjEiLCJ1c2VyX2lkIjoiMTAwMDAwIiwidXNlcl9uYW1lIjoiYXRtYW5ldWxlciIsImZ1bGxfbmFtZSI6IkF0bWFuIiwiY29tcGFueV9pZCI6IjEwMDAiLCJjb21wYW55X3BhY2tfaWQiOiIxIiwib3JnX2lkIjoiMiIsImJpel9vcmdfaWQiOiIiLCJkZXZpY2VfaWQiOiIiLCJleHAiOjE2MTE3NjAzNDEsImlzcyI6ImF0bWFuZXVsZXIiLCJhdWQiOiJhdG1hbmV1bGVyIn0.ugB6r56KlPlLPj-xCkCnxTQVFcm2l940HvPWAAKjTTQ","user_info":"eyJpc19zeXN0ZW1fY29tcGFueSI6dHJ1ZSwiY29tcGFueV9pZCI6MTAwMC4wLCJjb21wYW55X25tIjoiSFMgVklOQSIsInVzZXJfY2QiOjEwMDAwMC4wLCJ1c2VyX25hbWUiOiJhdG1hbmV1bGVyIiwiZnVsbF9uYW1lIjoiQXRtYW4iLCJvcmdfaWQiOjIuMCwib3JnX25tIjpudWxsLCJwb3NpdGlvbl9nZW5fY2QiOiIxNDAwMDAwNDAwMDAiLCJwb3NpdGlvbl9ubSI6bnVsbCwidXNlcl9sYW5ndWFnZSI6ImVuIiwiYXZhdGFyIjoiL3VwbG9hZHMvMTAwMC91c2VyL2F2YXRhci8xMDAwMDBfMjcxMDIwMjAxODIwMDcucG5nIiwiYml6X29yZ19pZCI6bnVsbCwiZGV2aWNlX2lkIjpudWxsfQ==","refesh_token":"3dOUqZZ4dKLXzTiC9QJqtEgXg/jpdZyP6ODdGmukgUJDXVVxWXtvhzsqGEqRkl1Pbb1+eXTlu+fznjNedhkNTQ==","expired_time":"2021-01-27T22:12:21.7577711+07:00","logout_time":30}

class Temp {
  bool _success;
  Data _data;

  bool get success => _success;
  Data get data => _data;

  Temp({
      bool success, 
      Data data}){
    _success = success;
    _data = data;
}

  Temp.fromJson(dynamic json) {
    _success = json["success"];
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    return map;
  }

}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiYXRtYW5ldWxlciIsImlzX3N5c3RlbV9hZG1pbiI6IjEiLCJ1c2VyX2lkIjoiMTAwMDAwIiwidXNlcl9uYW1lIjoiYXRtYW5ldWxlciIsImZ1bGxfbmFtZSI6IkF0bWFuIiwiY29tcGFueV9pZCI6IjEwMDAiLCJjb21wYW55X3BhY2tfaWQiOiIxIiwib3JnX2lkIjoiMiIsImJpel9vcmdfaWQiOiIiLCJkZXZpY2VfaWQiOiIiLCJleHAiOjE2MTE3NjAzNDEsImlzcyI6ImF0bWFuZXVsZXIiLCJhdWQiOiJhdG1hbmV1bGVyIn0.ugB6r56KlPlLPj-xCkCnxTQVFcm2l940HvPWAAKjTTQ"
/// user_info : "eyJpc19zeXN0ZW1fY29tcGFueSI6dHJ1ZSwiY29tcGFueV9pZCI6MTAwMC4wLCJjb21wYW55X25tIjoiSFMgVklOQSIsInVzZXJfY2QiOjEwMDAwMC4wLCJ1c2VyX25hbWUiOiJhdG1hbmV1bGVyIiwiZnVsbF9uYW1lIjoiQXRtYW4iLCJvcmdfaWQiOjIuMCwib3JnX25tIjpudWxsLCJwb3NpdGlvbl9nZW5fY2QiOiIxNDAwMDAwNDAwMDAiLCJwb3NpdGlvbl9ubSI6bnVsbCwidXNlcl9sYW5ndWFnZSI6ImVuIiwiYXZhdGFyIjoiL3VwbG9hZHMvMTAwMC91c2VyL2F2YXRhci8xMDAwMDBfMjcxMDIwMjAxODIwMDcucG5nIiwiYml6X29yZ19pZCI6bnVsbCwiZGV2aWNlX2lkIjpudWxsfQ=="
/// refesh_token : "3dOUqZZ4dKLXzTiC9QJqtEgXg/jpdZyP6ODdGmukgUJDXVVxWXtvhzsqGEqRkl1Pbb1+eXTlu+fznjNedhkNTQ=="
/// expired_time : "2021-01-27T22:12:21.7577711+07:00"
/// logout_time : 30

class Data {
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

  Data({
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

  Data.fromJson(dynamic json) {
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