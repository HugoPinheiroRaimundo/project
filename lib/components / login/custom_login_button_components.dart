import 'package:flutter/material.dart';
import 'package:project/Controllers/login_controller.dart';

class CustomLoginButtonComponents extends StatelessWidget {
  final LoginController loginController;

  const CustomLoginButtonComponents({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: loginController.inloader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed("/home");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Falha ao realizar login"),
                      duration: Duration(seconds: 5),
                    ));
                  }
                });
              },
              child: const Text("Login"),
            ),
    );
  }
}
