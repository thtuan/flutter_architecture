import 'package:hive/hive.dart';

class Auth {
  final String assetToken;
  final String refreshToken;

  Auth(this.assetToken, this.refreshToken);

  bool isAuthenticated() {
    Hive.openBox('name', encryptionCipher: HiveAesCipher([123213]));
    return false;
  }
}

@HiveType(typeId: 0)
class AuthHive extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  AuthHive(this.name, this.age);
}
