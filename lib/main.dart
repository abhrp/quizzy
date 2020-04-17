import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizzyApp());

class QuizzyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizzyState();
  }
}

class _QuizzyState extends State<QuizzyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 20},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Lion', 'score': 50},
        {'text': 'Leopard', 'score': 25}
      ]
    },
    {
      'question': 'What\'s your favorite ice-cream?',
      'answers': [
        {'text': 'Vanilla', 'score': 5},
        {'text': 'Butterscotch', 'score': 10},
        {'text': 'Chocolate', 'score': 20},
        {'text': 'Caramel', 'score': 40}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerClicked(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzy')), //Appbar
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions[_questionIndex]['question'],
                answers: _questions[_questionIndex]['answers'],
                clicked: _answerClicked)
            : Result(_totalScore),
      ), //Scaffold
    ); //MaterialApp
  }
}
