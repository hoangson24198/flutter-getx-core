import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/response_base.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/custom_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/response_user.dart';

class AppRepository {
  ApiClient _apiRequest;
  Dio dio;

  AppRepository() {
    dio = CustomDio().instance;
    _apiRequest = ApiClient(dio);
  }
  Future<ResponseBase<ResponseUser>> login(String username, String password) async{
      ResponseBase<ResponseUser> response;
      Map<String,dynamic> data = {
        'username': username,
        'password' : password
      };
      try{
        response = await _apiRequest.login(data);
      }catch(error, stacktrace){
        Fimber.d(stacktrace.toString());
      }
      return response;
  }
}