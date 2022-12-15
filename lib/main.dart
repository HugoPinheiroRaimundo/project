import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // Navegação das telas rotas nomeadas.
      initialRoute: "/splash",
      routes: {
        "/splash": (_) => const SplashPage(),
        "/login": (_) => LoginPage(),
        "/home": (_) => const HomePage(),
      },
    );
  }
}
