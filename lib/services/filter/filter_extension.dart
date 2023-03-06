import 'dart:async';

extension StreamFilterExt on Stream<String> {
  Stream<String> emailFilter() {
    return where(
        (str) => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(str));
  }
}
