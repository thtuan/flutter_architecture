import 'package:architecture/services/api/client/api_client.dart';

class AuthClient extends ApiClient {
  AuthClient({required super.url, super.checkAuthenticated = false});

}