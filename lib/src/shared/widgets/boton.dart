import 'package:calculadora/src/providers/calculadora_provider.dart';
import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  const Boton(
      {super.key,
      required this.provider,
      required this.numero,
      this.color = 2,
      this.type = 0});

  final CalculadoraProvider provider;
  final String numero;
  final int color;
  final int type;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(top: 15.0, right: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: (color == 1
                ? const Color.fromARGB(177, 207, 123, 13)
                : const Color.fromARGB(118, 1, 1, 0)),
            elevation: 5.0),
        onPressed: () {
          if (numero == "=") {
            provider.evaluateExpression();
          } else if (numero == "AC") {
            provider.restart();
          } else if (numero == "CE") {
            provider.restartOperation();
          } else {
            provider.addOperator(numero);
          }
        },
        child: Text(
          numero,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
