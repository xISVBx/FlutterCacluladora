import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';

class CalculadoraProvider extends ChangeNotifier {
  String operation = "";
  String result = "0";

  void addOperator(String numero) {
    operation += numero;
    notifyListeners();
  }

  void evaluateExpression() {
    Expression exp = Expression(operation);
    try {
      result = exp.eval().toString();
    } catch (e) {
      result = 'Error';
    }
    notifyListeners();
  }

  void restartOperation() {
    operation = "";
    notifyListeners();
  }

  void restart() {
    operation = "";
    result = "0";
    notifyListeners();
  }
}
