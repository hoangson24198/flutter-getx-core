import 'dart:convert';

import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ResponseBase<T>{
  int _statusCode;
  String _message;
  bool _success;
  T _data;

  int get statusCode => _statusCode;
  String get message => _message;
  bool get success => _success;
  T get data => _data;

  setData(T data){
    this._data = data;
  }

  checkSuccess(){
    return (success && data!=null);
  }

  ResponseBase({
    int statusCode,
    String message,
    bool success,
    T data}){
    _statusCode = statusCode;
    _message = message;
    _success = success;
    _data = data;
  }

  ResponseBase.fromJson(dynamic json) {
    _statusCode = json["statusCode"];
    _message = json["message"];
    _success = json["success"];
    if(json["data"] != null){
      _data = jsonDecode(json["data"].toString()) as T;
      Fimber.d("${jsonDecode(json["data"].toString())}");
    }else{
      _data = null;
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = jsonEncode(_data);
    }
    return map;
  }

}