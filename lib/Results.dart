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
          Text(
            widget.resultHandler.currentNumber ?? "",
            style: const TextStyle(
              fontSize: 31,
            ),
          ),
           Text(
             widget.resultHandler.currentNumber ?? "SECOND TEXT",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ],
    )

    );
  }
}

