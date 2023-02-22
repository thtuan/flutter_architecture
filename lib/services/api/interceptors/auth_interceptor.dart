import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptorsWrapper {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_checkAccessToken()) {
      handler.next(options);
    } else {
      _refreshToken();
      handler.reject(DioError.badResponse(
          statusCode: 401, requestOptions: options, response: null));
    }
  }

  void _refreshToken() async {
    final dio = Dio(BaseOptions(baseUrl: ''));
    dio.post('refreshToken');
  }

  bool _checkAccessToken() {
    return true;
  }
}
