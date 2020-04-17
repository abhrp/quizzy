import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() => runApp(QuizzyApp());

class QuizzyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizzyState();
  }
}

class _QuizzyState extends State<QuizzyApp> {
  var _questionIndex = 0;

  void _answerClicked() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzy')), //Appbar
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerClicked),
            Answer(_answerClicked),
            Answer(_answerClicked),
          ],
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }
}
