import 'package:flutter/material.dart';

// O stateful é completamente dinâmico e nos dá o poder de torná-lo mutável através da gerência de estados
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // ciclo de vida iniciado assim que a splash page é iniciada
  @override
  void initState() {
    // initState tem future e não pode ser assincróno sempre tem que retornar void
    super.initState();
    // simulando um tempo de carregamento e redirecionando para a página de login
    Future.delayed(const Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed("/login"),
      // pushReplacementNamed faz o push sem possibilidade de voltar para tela anterior
    );
  }

  @override
  Widget build(BuildContext context) {
    // Cor da Splash e setando o indicador de progresso
    return Container(
      color: Colors.lightBlue,
      child: const Center(
        // centralizando o indicador de progresso
        child: CircularProgressIndicator(
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
