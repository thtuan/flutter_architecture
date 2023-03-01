import 'package:architecture/models/auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: "https://urltoauth/api/v1/")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @GET('/login')
  Future<HttpResponse<Auth>> login();
}
