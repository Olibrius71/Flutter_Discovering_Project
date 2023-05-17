import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_first/ResultHandler.dart';




enum Operations {
  reset,
  delete,
  add,
  substract,
  multiply,
  divide,
  equals,
}



class Calculator extends StatefulWidget {
  final ResultHandler resultHandler;

  const Calculator({Key? key, required this.resultHandler}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String? previousNumber;
  String? currentNumber;
  Operations? operation;

  void handleNumberPressed(String numberPressed) {
    setState(() {
      widget.resultHandler.addNumber(numberPressed);
    });
  }

  void handleOperatorPressed(Operations operatorPressed) {
    setState(() {
      widget.resultHandler.handleOperator(operatorPressed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      childAspectRatio: 0.92,

      children: [
        CalcOperator(btnTxt: "AC", operation: Operations.reset, calcHandlePressed: handleOperatorPressed),
        CalcOperator(btnTxt: "AC", operation: Operations.reset, calcHandlePressed: handleOperatorPressed),
        CalcOperator(btnTxt: "DEL", operation: Operations.delete, calcHandlePressed: handleOperatorPressed),
        CalcOperator(btnTxt: "/", operation: Operations.divide, calcHandlePressed: handleOperatorPressed),
        CalcNumber(btnTxt: "1", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "2", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "3", calcHandlePressed: handleNumberPressed),
        CalcOperator(btnTxt: "x", operation: Operations.multiply, calcHandlePressed: handleOperatorPressed),
        CalcNumber(btnTxt: "4", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "5", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "6", calcHandlePressed: handleNumberPressed),
        CalcOperator(btnTxt: "+", operation: Operations.add, calcHandlePressed: handleOperatorPressed),
        CalcNumber(btnTxt: "7", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "8", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: "9", calcHandlePressed: handleNumberPressed),
        CalcOperator(btnTxt: "-", operation: Operations.substract, calcHandlePressed: handleOperatorPressed),
        CalcNumber(btnTxt: "0", calcHandlePressed: handleNumberPressed),
        CalcNumber(btnTxt: ".", calcHandlePressed: handleNumberPressed),
        CalcOperator(btnTxt: "==", operation: Operations.equals, calcHandlePressed: handleOperatorPressed),
        CalcOperator(btnTxt: "==", operation: Operations.equals, calcHandlePressed: handleOperatorPressed),
      ],
    );
  }
}





class CalcNumber extends StatelessWidget {
  final String btnTxt;

  final void Function(String) calcHandlePressed;

  const CalcNumber({required this.btnTxt, required this.calcHandlePressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calcHandlePressed(btnTxt);
      },
      child: Text(
        btnTxt,
        style: const TextStyle(
          fontSize: 33,
        ),
      ),
    );
  }
}



class CalcOperator extends StatelessWidget {
  final String btnTxt;
  final Operations operation;


  final void Function(Operations) calcHandlePressed;

  const CalcOperator({required this.btnTxt,required this.operation, required this.calcHandlePressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calcHandlePressed(operation);
      },
      child: Text(
        btnTxt,
        style: const TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }

}


