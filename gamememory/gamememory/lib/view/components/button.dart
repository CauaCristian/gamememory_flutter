import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final void Function() function;

  const Button({required this.color, required this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),  // Adicione um espaçamento entre os botões
        child: ElevatedButton(
          onPressed: function,
          child: Text(""),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
          ),
        ),
      ),
    );
  }
}