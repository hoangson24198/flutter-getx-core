part of 'api_client.dart';


class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= "${Apis.base_url}/api";
  }
  final Dio _dio;
  String baseUrl;

  @override
  Future<Dio> getClient() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      String token = sharedPreferences.getString(SharedPreferenceKey.pref_token);
      _dio.interceptors.clear();
      _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options){
          options.headers["Authorization"] = "Bearer" + token;
          return options;
      },onResponse: (Response response){
        return response;
      },onError: (DioError error){
        if(error.response?.statusCode == 403 || error.response?.statusCode == 401){
          _dio.interceptors.requestLock.lock();
          _dio.interceptors.responseLock.lock();
          RequestOptions options = error.response.request;
          options.headers["Authorization"] = "Bearer" + token;
          _dio.interceptors.requestLock.unlock();
          _dio.interceptors.responseLock.unlock();
          return _dio.request(options.path,options: options);
        }else{
          return error;
        }
      }));
      _dio.options.baseUrl = baseUrl;
      return _dio;
  }

}