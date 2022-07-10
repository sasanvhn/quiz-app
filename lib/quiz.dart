import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  static const questionText = "questionText",
      answers = "answers",
      score = "score",
      choice = "choice";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex][questionText]),
        ...(questions[questionIndex][answers] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerQuestion: answerQuestion,
              text: answer[choice],
              score: answer[score]);
        }).toList()
      ],
    );
  }
}
