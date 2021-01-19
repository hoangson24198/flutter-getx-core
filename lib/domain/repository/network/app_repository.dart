import 'package:dio/dio.dart';
import 'package:icomax/domain/repository/network/api_client.dart';

class AppRepository {
  ApiClient _apiRequest;
  Dio dio;

  AppRepository() {
    dio = Dio();
    _apiRequest = ApiClient(dio);
  }
}