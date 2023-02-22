import 'package:architecture/services/api/client/auth_client.dart';

class AuthRepository {

  final AuthClient authClient = AuthClient(url: 'url');
}