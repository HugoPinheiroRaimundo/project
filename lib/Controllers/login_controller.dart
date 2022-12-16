import 'package:flutter/foundation.dart';

class LoginController {
  ValueNotifier<bool> inloader = ValueNotifier<bool>(false); // Escuta a

  String? _login; // variável que podem ser null
  setLogin(String value) =>
      _login = value; // atribui o valor do textfield para a variável login

  String? _password;
  setPassword(String value) => _password =
      value; // atribui o valor do textfield para a variável password

  Future<bool> auth() async {
    inloader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inloader.value = false;
    return _login == "admin" && _password == "123";
  }
}
