import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 150),
            const TextField(
              decoration: InputDecoration(
                label: Text("Login"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Senha"),
              ),
              obscureText: true,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}