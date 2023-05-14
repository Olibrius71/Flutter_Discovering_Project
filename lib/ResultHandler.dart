import 'package:flutter/cupertino.dart';
import 'package:flutter_first/Calculator.dart';


class ResultHandler {
  ValueNotifier<String> previousNumber = ValueNotifier<String>("");
  ValueNotifier<String> currentNumber = ValueNotifier<String>("");

  Operations? operation;

  ResultHandler() {
    operation = null;
  }

  void addNumber(String newNumberOrPoint) {
    currentNumber.value = currentNumber.value + newNumberOrPoint;
    return;
  }

  @override
  String toString() {
    return "previousNumber = ${previousNumber.value}\n currentNumber = ${currentNumber.value}\n operation = $operation";
  }
}