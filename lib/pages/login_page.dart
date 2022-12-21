import 'package:flutter/material.dart';
import 'package:project/Controllers/login_controller.dart';
import 'package:project/components%20/%20login/custom_login_button_components.dart';

class LoginPage extends StatelessWidget {
// _controller tem a instância do arquivo login_controller logo acessa a classe de lá
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Estrutura básica de layout "Fundo de tela branco limpo"
      body: Container(
        padding: const EdgeInsets.all(28), // espaçamento interno do container
        child: Column(
          // a column faz que os elementos colocados abaixo fiquem um após o outro tipo uma TableView
          // Centralizando o widget no meio da tela
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people,
                size: MediaQuery.of(context).size.height *
                    0.2), // setando o icone do sistema e seu tamanho de acordo com a tela
            // CustomTextfieldWidget(label: "Login", onChanged: _controller.setLogin), // widget componentizado que tomei erro
            TextField(
              decoration: const InputDecoration(
                // decoration é o estilo do textField basicamente
                label: Text(
                    "Login"), // Indicação ao usuário o que ele deve interagir tipo um placeholder
              ),
              onChanged: _controller
                  .setLogin, // Controla iteração do user no textfield, dispara sempre que o user digita
            ),
            TextField(
              decoration: const InputDecoration(
                // decoration é o estilo do textField basicamente
                label: Text(
                    "Password"), // Indicação ao usuário o que ele deve interagir tipo um placeholder
              ),
              onChanged: _controller
                  .setPassword, // Controla iteração do user no textfield, dispara sempre que o user digita
            ),

            const SizedBox(
                height: 15), // Espaçamento entre o textfield e o button
            CustomLoginButtonComponents(loginController: _controller)
          ],
        ),
      ),
    );
  }
}
