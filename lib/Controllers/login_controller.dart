class LoginController {
  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    await Future.delayed(const Duration(seconds: 2));
    return _login == "admin" && _password == "123";
  }
}
