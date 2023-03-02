import 'package:flutter/material.dart';



class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

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
        children: const [
          Text(
            "FIRST TEXT",
            style: TextStyle(
              fontSize: 31,
            ),
          ),
          Text(
            "SECOND TEXT",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ],
    )

    );
  }
}

