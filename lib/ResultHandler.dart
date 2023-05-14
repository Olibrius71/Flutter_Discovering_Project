import 'package:flutter_first/Calculator.dart';


class ResultHandler {
  String? previousNumber;
  String? currentNumber;

  Operations? operation;

  ResultHandler() {
    previousNumber = null;
    currentNumber = null;
    operation = null;
  }

  void addNumber(String newNumberOrPoint) {
    if (currentNumber != null) {
      currentNumber = currentNumber.toString() + newNumberOrPoint;
      return;
    }
    currentNumber = newNumberOrPoint;
  }

  @override
  String toString() {
    return "previousNumber = $previousNumber\n currentNumber = $currentNumber\n operation = $operation";
  }
}