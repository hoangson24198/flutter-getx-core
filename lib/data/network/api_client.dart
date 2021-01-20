import 'package:dio/dio.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/response_base.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "${Apis.base_url}/api")
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}){
    dio.options = BaseOptions(receiveTimeout: 15000,connectTimeout: 15000);
        return _ApiClient(dio,baseUrl: baseUrl);
  }

  @POST("Auth/Login")
  Future<ResponseBase<ResponseUser>> login(@Body() Map<String,dynamic> data);
}