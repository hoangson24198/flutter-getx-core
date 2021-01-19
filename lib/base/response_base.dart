class ResponseBase<D>{
  int statusCode;
  String resultMsg;
  bool isSuccess;
  bool success;
  String message;
  D data;
}