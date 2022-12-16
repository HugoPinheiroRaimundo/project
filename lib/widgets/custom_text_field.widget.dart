import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final String obscureText;

  const CustomTextfieldWidget({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.obscureText,
  }) : super(key: key);

/* Montar widget é diferente de componentes, não podendo passar o controller para dentro da classe,
widget é algo genárico que podemos chamar em qualquer parte da aplicação. Temos que remover o que é
específico de dentro de widget */

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          //    label: Text(label), // TOMEI ERRO AQUI E NÃO CONSEGUI CORRIGIR. Flutter 3 != flutter 2
          ),
      obscureText: true, // oculta a senha digitada
      onChanged:
          onChanged, // _controller foi criado na linha 8 e acessa setPassword no arquivo da controller
    );
  }
}

/* Componentes x Widget: Componentes é algo mais específico tipo uma mensagem de erro de determinada tela ou algum tipo de verificação
de alguma tela. Widget é algo genérico que pode ser utilizado em qualquer parte do app

OBS: CLASSE NÃO UTILIZADA NO PROJETO SÓ EXEMPLO DE WIDGET SEPARADO
*/