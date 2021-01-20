part of 'api_client.dart';


class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= "${Apis.base_url}/api";
  }
  final Dio _dio;
  String baseUrl;

  @override
  Future<ResponseBase<ResponseUser>> login(Map<String, dynamic> data) async {
      const _extra = <String,dynamic>{};
      final _data = <String,dynamic>{};
      final Response<Map<String,dynamic>> _result = await _dio.request(
        'Auth/Login',
        queryParameters: data,
        options: RequestOptions(
          method: 'POST',
          headers: <String,dynamic>{},
          extra: _extra,
          baseUrl: baseUrl
        ),
        data: _data
      );
      final value = ResponseBase<ResponseUser>.fromJson(_result.data);
      return value;
  }
}