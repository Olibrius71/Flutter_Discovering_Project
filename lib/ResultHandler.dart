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
    if (newNumberOrPoint == "." && currentNumber.value == "" ) {
      return;
    }
    if (currentNumber.value == "Impossible de Diviser par 0") {
      currentNumber.value = "";
    }
    currentNumber.value = currentNumber.value + newNumberOrPoint;
  }


  void handleOperator(Operations operationClicked) {
    switch (operationClicked) {
      case Operations.reset:
        currentNumber.value = "";
        previousNumber.value = "";
        break;
      case Operations.delete:
        if (currentNumber.value != "") {
          currentNumber.value = currentNumber.value.substring(0, -1);
        }
        break;
      case Operations.add:
      case Operations.substract:
      case Operations.multiply:
      case Operations.divide:
        previousNumber.value = currentNumber.value;
        currentNumber.value = "";
        operation = operationClicked;
        break;
      case Operations.equals:
        handleEquals();
        break;
    }
  }

  void handleEquals() {
    switch (operation) {
      case Operations.add:
        currentNumber.value = (double.parse(previousNumber.value) + double.parse(currentNumber.value)).toString();
        break;
      case Operations.substract:
        currentNumber.value = (double.parse(previousNumber.value) - double.parse(currentNumber.value)).toString();
        break;
      case Operations.multiply:
        currentNumber.value = (double.parse(previousNumber.value) * double.parse(currentNumber.value)).toString();
        break;
      case Operations.divide:
        if (double.parse(currentNumber.value) != 0.0 && double.parse(currentNumber.value) != 0) {
          currentNumber.value = (double.parse(previousNumber.value) / double.parse(currentNumber.value)).toString();
        }
        else {
          currentNumber.value = "Impossible de Diviser par 0";
        }
        break;
    }

    String digitsAfterPoint = currentNumber.value.split(".")[1];
    if (digitsAfterPoint == "0") {
      currentNumber.value = double.parse(currentNumber.value).toStringAsFixed(0);
    }
    else if (digitsAfterPoint.length > 10) {
      currentNumber.value = double.parse(currentNumber.value).toStringAsFixed(10);
    }
  }


  @override
  String toString() {
    return "previousNumber = ${previousNumber.value}\n currentNumber = ${currentNumber.value}\n operation = $operation";
  }
}