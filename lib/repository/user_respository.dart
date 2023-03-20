import 'package:architecture/models/user/user.dart';
import 'package:architecture/services/local_storage/local_storage.dart';
import 'package:rxdart/rxdart.dart';

class UserRepository {
  final _localStorage = LocalStorage.instance;
  final BehaviorSubject<User> userStream = BehaviorSubject<User>();

  UserRepository() {
    _getUser();
  }

  void _getUser() async {
    Map<String, String> data = await _localStorage.storage.readAll();
    final localUser = User.fromJson(data);
    userStream.add(localUser);
  }
}
