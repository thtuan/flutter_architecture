import 'package:architecture/services/api/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final dio = Dio();
  final String url;
  final bool checkAuthenticated;
  ApiClient({required this.url, this.checkAuthenticated = true}) {
    dio.options.baseUrl = url;
    if(checkAuthenticated) dio.interceptors.add(AuthInterceptor());
  }
}