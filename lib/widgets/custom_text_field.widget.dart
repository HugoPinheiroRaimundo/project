import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatelessWidget {
  final String label;
  final Function(String) onChanged;

  const CustomTextfieldWidget({
    Key? key,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

/* Montar widget é diferente de componentes, não podendo passar o controller para dentro da classe,
widget é algo genárico que podemos chamar em qualquer parte da aplicação. Temos que remover o que é
específico de dentro de widget */

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          //    label: Text(label),
          ),
      obscureText: true, // oculta a senha digitada
      onChanged:
          onChanged, // _controller foi criado na linha 8 e acessa setPassword no arquivo da controller
    );
  }
}
