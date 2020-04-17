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
  final questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Elephant', 'Tiger', 'Lion', 'Leopard']
    },
    {
      'question': 'What\'s your favorite ice-cream?',
      'answers': ['Vanilla', 'Butterscotch', 'Chocolate', 'Caramel']
    }
  ];
  var _questionIndex = 0;

  void _answerClicked() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzy')), //Appbar
        body: _questionIndex < questions.length
            ? Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerClicked, answer);
            }).toList()
          ],
        )
            : Center(
          child: Text('You did it!'),
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }
}
