import 'package:calculadora/src/providers/calculadora_provider.dart';
import 'package:flutter/material.dart';

import 'package:eval_ex/expression.dart';
import 'package:provider/provider.dart';

import '../shared/widgets/boton.dart';
import '../shared/widgets/ventana_calculadora.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<StatefulWidget> createState() => _Calculator();
}
class _Calculator extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final CalculadoraProvider calculadoraProvider = context.watch<CalculadoraProvider>();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 201, 201, 201),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      width: 340,
                      height: 150,
                      child: VentanaCacl(provider: calculadoraProvider,
                        
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Boton(numero: "AC", color: 1, provider: calculadoraProvider,),
                  Boton(numero: "CE", color: 1, provider: calculadoraProvider,),
                  Boton(numero: "%", provider: calculadoraProvider,),
                  Boton(numero: "/", provider: calculadoraProvider,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Boton(numero: "7", provider: calculadoraProvider,),
                  Boton(numero: "8", provider: calculadoraProvider,),
                  Boton(numero: "9", provider: calculadoraProvider,),
                  Boton(numero: "*", provider: calculadoraProvider,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Boton(numero: "4", provider: calculadoraProvider,),
                  Boton(numero: "5", provider: calculadoraProvider,),
                  Boton(numero: "6", provider: calculadoraProvider,),
                  Boton(numero: "-", provider: calculadoraProvider,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Boton(numero: "1", provider: calculadoraProvider,),
                          Boton(numero: "2", provider: calculadoraProvider,),
                          Boton(numero: "3", provider: calculadoraProvider,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Boton(numero: "0", provider: calculadoraProvider,),
                          Boton(numero: ".", provider: calculadoraProvider,),
                          Boton(numero: "=", provider: calculadoraProvider,),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    width: 70,
                    margin: const EdgeInsets.only(
                      right: 20,
                      top: 15.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(118, 1, 1, 0),
                          elevation: 5.0),
                      onPressed: () {
                        calculadoraProvider.addOperator("+");
                      },
                      child: const Text(
                        "+",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
  }
