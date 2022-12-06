import 'package:flutter/material.dart';
import 'package:project/Controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 150),
            TextField(
              decoration: const InputDecoration(
                label: Text("Login"),
              ),
              onChanged: _controller.setLogin, // Controla iteração do user no
            ),
            TextField(
              decoration: const InputDecoration(
                label: Text("Senha"),
              ),
              obscureText: true,
              onChanged: _controller.setPassword,
            ),
            const SizedBox(height: 15),
            ValueListenableBuilder(
              valueListenable: _controller.inloader,
              builder: (_, inLoader, __) => inLoader
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.auth().then((result) {
                          if (result) {
                            print("Sucesso");
                          } else {
                            print("Failed");
                          }
                        });
                      },
                      child: const Text("Login"),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
