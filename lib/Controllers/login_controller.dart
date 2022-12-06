import 'package:flutter/foundation.dart';

class LoginController {
  ValueNotifier<bool> inloader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inloader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inloader.value = false;
    return _login == "admin" && _password == "123";
  }
}
