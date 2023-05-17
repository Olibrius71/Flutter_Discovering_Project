import 'package:flutter/material.dart';

import 'ResultHandler.dart';



class Results extends StatefulWidget {
  final ResultHandler resultHandler;

  const Results({Key? key, required this.resultHandler}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.lightBlueAccent),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ValueListenableBuilder<String>(
            valueListenable: widget.resultHandler.currentNumber,
            builder: (BuildContext context, String value, Widget? child) {
              return Text(value,
                style: const TextStyle(
                  fontSize: 31,
                ),);
            },
          ),
          ValueListenableBuilder<String>(
            valueListenable: widget.resultHandler.previousNumber,
            builder: (BuildContext context, String value, Widget? child) {
              return Text(value,
                style: const TextStyle(
                  fontSize: 35,
                ),
              );
            },
          ),
        ],
    )

    );
  }
}

