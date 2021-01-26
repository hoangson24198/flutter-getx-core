import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:gson/gson.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/response_base.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: Apis.base_url)
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}){
    dio.options = BaseOptions(receiveTimeout: 15000,connectTimeout: 15000);
        return _ApiClient(dio,baseUrl: baseUrl);
  }
  static ApiClient create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ApiClient(dio);
  }


  @POST("Auth/Login")
  Future<ResponseBase<ResponseUser>> login(@Body() Map<String,dynamic> data);
}