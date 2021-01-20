import 'package:dio/dio.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDio {
  var _dio;

  CustomDio() {
    _dio = Dio();
    _dio.interceptors.add(PrettyDioLogger());
  }

  CustomDio.withAuthentication() {
    _dio = Dio();
    _dio.interceptors.clear();
    _dio.interceptors.add(PrettyDioLogger());
    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: _onRequest, onResponse: _onRespose, onError: _onError));
  }

  Dio get instance => _dio;

  _onRequest(RequestOptions options) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.get(SharedPreferenceKey.pref_token);
    options.headers['Authorization'] = token;
  }

  _onError(DioError e) {
    return e;
  }

  _onRespose(Response response) {
    return response;
  }

}