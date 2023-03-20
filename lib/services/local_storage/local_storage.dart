import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  late final FlutterSecureStorage storage;

  LocalStorage._() {
    storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
  }

  static LocalStorage instance = LocalStorage._();
}
