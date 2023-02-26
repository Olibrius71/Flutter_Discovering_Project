import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainContainer(),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.lightBlueAccent,
          surface: Colors.blueAccent,
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}


class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULATOR"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 29,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: const Center(
        child: CalcContainer(),
      ),
    );
  }
}



class CalcContainer extends StatefulWidget {
  const CalcContainer({Key? key}) : super(key: key);

  @override
  State<CalcContainer> createState() => _CalcContainerState();
}

class _CalcContainerState extends State<CalcContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 1.0,
            child: Results(),
          ),
        ),
        Expanded(
          flex: 3,
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 1.0,
            child: Calculator(),
          ),
        ),
      ],
    );
  }
}



class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        Text("FIRST TEXT"),
        Text("SECOND TEXT"),
      ],
    );
  }
}




class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      children: const [
        CalcButton(btnTxt: "AC"),
        CalcButton(btnTxt: "AC"),
        CalcButton(btnTxt: "DEL"),
        CalcButton(btnTxt: "/"),
        CalcButton(btnTxt: "1"),
        CalcButton(btnTxt: "2"),
        CalcButton(btnTxt: "3"),
        CalcButton(btnTxt: "x"),
        CalcButton(btnTxt: "4"),
        CalcButton(btnTxt: "5"),
        CalcButton(btnTxt: "6"),
        CalcButton(btnTxt: "+"),
        CalcButton(btnTxt: "7"),
        CalcButton(btnTxt: "8"),
        CalcButton(btnTxt: "9"),
        CalcButton(btnTxt: "-"),
        CalcButton(btnTxt: "0"),
        CalcButton(btnTxt: "."),
        CalcButton(btnTxt: "="),
        CalcButton(btnTxt: "="),
      ],
    );
  }
}



class CalcButton extends StatelessWidget {
  final String btnTxt;

  const CalcButton({required String this.btnTxt});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {  },
      child: Text(btnTxt),
    );
  }
}