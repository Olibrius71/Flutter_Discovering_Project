import 'package:flutter/material.dart';

import 'Calculator.dart';
import 'ResultHandler.dart';
import 'Results.dart';


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
          onPrimary: Colors.white,
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
  final ResultHandler resultHandler = ResultHandler();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 1.0,
            child: Results(resultHandler: resultHandler,),
          ),
        ),
        Expanded(
          flex: 3,
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 1.0,
            child: Calculator(resultHandler: resultHandler),
          ),
        ),
      ],
    );
  }
}




