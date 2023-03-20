import 'package:architecture/models/auth/auth.dart';
import 'package:architecture/services/api/client/auth_client.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:retrofit/dio.dart';

class AuthRepository {
  final dio = Dio();
  late final AuthClient _authClient;
  final _log = Logger('AuthRepository');

  AuthRepository() {
    _authClient = AuthClient(dio);
    _log.info('init');
  }

  Future<HttpResponse<Auth>> doSomethingWithApiClient() {
    return _authClient.login();
  }
}
