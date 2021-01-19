import 'package:dio/dio.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:retrofit/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "${Apis.base_url}/api")
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  Future<Dio> getClient();

}