import 'package:flutter/material.dart';




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
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double? previousNumber;
  double? currentNumber;
  Operations? operation;

  void handleButton() {

  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      children: const [
        CalcOperator(btnTxt: "AC", operation: Operations.reset),
        CalcOperator(btnTxt: "AC", operation: Operations.reset),
        CalcOperator(btnTxt: "DEL", operation: Operations.delete),
        CalcOperator(btnTxt: "/", operation: Operations.divide),
        CalcNumber(btnTxt: "1"),
        CalcNumber(btnTxt: "2"),
        CalcNumber(btnTxt: "3"),
        CalcOperator(btnTxt: "x", operation: Operations.multiply),
        CalcNumber(btnTxt: "4"),
        CalcNumber(btnTxt: "5"),
        CalcNumber(btnTxt: "6"),
        CalcOperator(btnTxt: "+", operation: Operations.add),
        CalcNumber(btnTxt: "7"),
        CalcNumber(btnTxt: "8"),
        CalcNumber(btnTxt: "9"),
        CalcOperator(btnTxt: "-", operation: Operations.substract),
        CalcNumber(btnTxt: "0"),
        CalcNumber(btnTxt: "."),
        CalcOperator(btnTxt: "=", operation: Operations.equals),
        CalcOperator(btnTxt: "=", operation: Operations.equals),
      ],
    );
  }
}



class CalcNumber extends StatelessWidget {
  final String btnTxt;

  const CalcNumber({required String this.btnTxt});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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

  const CalcOperator({required String this.btnTxt,required Operations this.operation});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        btnTxt,
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

}


