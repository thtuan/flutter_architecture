import 'package:rxdart/rxdart.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();
  final BehaviorSubject<bool> authenticationSubscription =
      BehaviorSubject.seeded(false);

  String? token;
  bool isAuthenticated = false;

  void logInWith({required Auth authMethod}) async {
    isAuthenticated = await authMethod._login();
    authenticationSubscription.add(isAuthenticated);
  }

  void logOut() {}
}

abstract class Auth {
  Future<bool> _login() async {
    return true;
  }
}

abstract class AuthUser extends Auth {
  AuthUser({required String userName, required password});
}

abstract class AuthGoogle extends Auth {
  AuthGoogle({required String accessToken});
}

abstract class AuthApple extends Auth {
  AuthApple({required String accessToken});
}
