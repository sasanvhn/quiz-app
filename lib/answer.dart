import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String text;
  final int score;

  Answer(
      {@required this.answerQuestion,
      @required this.text,
      @required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(text),
        onPressed: () => answerQuestion(score),
        textColor: Colors.white,
      ),
    );
  }
}
