import 'package:architecture/app/app_configures.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

enum Env { dev, staging, production }

extension EnvExt on String {
  Env toEnv() {
    switch (this) {
      case 'dev':
        return Env.dev;
      case 'staging':
        return Env.staging;
      case 'production':
        return Env.production;
      default:
        return Env.dev;
    }
  }
}

class App {
  App._();

  static late Env _currentEnv;

  static void init(Env env) {
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      debugPrint(
          '${record.loggerName}: ${record.level.name}: ${record.time}: ${record.message}');
    });
    _currentEnv = env;
  }

  static Map<AppConfig, String> get configures => _configures[_currentEnv];
  static final Map<Env, dynamic> _configures = {
    Env.dev: dev,
    Env.staging: staging,
    Env.production: product,
  };

  static final Map<AppConfig, String> dev = {
    AppConfig.baseUrl: '',
  };
  static final Map<AppConfig, String> staging = {AppConfig.baseUrl: ''};
  static final Map<AppConfig, String> product = {AppConfig.baseUrl: ''};
}
