import 'package:dio/dio.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      handler.next(response);
      return;
    }

    switch (response.statusCode) {
      case 404:
        //TODO(me):
        break;
    }
    handler.next(response);
  }
}
