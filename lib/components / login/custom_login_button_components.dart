import 'package:flutter/material.dart';
import 'package:project/Controllers/login_controller.dart';

class CustomLoginButtonComponents extends StatelessWidget {
  final LoginController
      loginController; // Passando o login controller da class loginController para dentro dessa classe aqui

  const CustomLoginButtonComponents(
      {super.key,
      required this.loginController}); // sempre que passar tem que required

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: loginController.inloader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  //utilizando o controller trago da classe da controller
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
