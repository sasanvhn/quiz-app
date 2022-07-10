import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  String get showResult {
    String resultText;
    if (score <= 5) {
      resultText = "5 or less!";
    } else if (score <= 8) {
      resultText = "5 to 8!";
    } else {
      resultText = "more than 8!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            showResult,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text("Restart Quiz!"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
