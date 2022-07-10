import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _countScore = 0;
  var _questionIndex = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _countScore += score;
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _countScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questionText = "questionText",
        answers = "answers",
        score = "score",
        choice = "choice";
    final _questions = const [
      {
        questionText: "q1",
        answers: [
          {choice: "1yek", score: 1},
          {choice: "1do", score: 2},
          {choice: "1se", score: 3},
          {choice: "1char", score: 4},
        ],
      },
      {
        questionText: "q2",
        answers: [
          {choice: "2yek", score: 1},
          {choice: "2do", score: 2},
          {choice: "2se", score: 3},
          {choice: "2char", score: 4},
        ],
      },
      {
        questionText: "q3",
        answers: [
          {choice: "3yek", score: 1},
          {choice: "3do", score: 2},
          {choice: "3se", score: 3},
          {choice: "3char", score: 4},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey!"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_countScore, _restartQuiz),
      ),
    );
  }
}
