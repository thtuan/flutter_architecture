import 'package:architecture/models/auth/auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserLocalStorage {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  late final FlutterSecureStorage storage;

  UserLocalStorage._() {
    storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
  }

  static UserLocalStorage instance = UserLocalStorage._();

  Auth get authenticated => Auth('assetToken', 'refreshToken');
}
