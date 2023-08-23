import 'package:calculadora/src/providers/calculadora_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class VentanaCacl extends StatelessWidget {
  

  const VentanaCacl({
    super.key,
    required this.provider
  });

    final CalculadoraProvider provider;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromRGBO(189, 197, 156, 3),
        ),
        width: 300,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    provider.operation,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    provider.result,
                    style: const TextStyle(
                      fontSize: 60.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
