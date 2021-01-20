class ResponseBase<D>{
  int _statusCode;
  String _message;
  bool _success;
  D _data;

  int get statusCode => _statusCode;
  String get message => _message;
  bool get success => _success;
  D get data => _data;

  ResponseBase({
    int statusCode,
    String message,
    bool success,
    D data}){
    _statusCode = statusCode;
    _message = message;
    _success = success;
    _data = data;
  }

  ResponseBase.fromJson(dynamic json) {
    _statusCode = json["statusCode"];
    _message = json["message"];
    _success = json["success"];
    _data = json["data"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = _data;
    }
    return map;
  }

}