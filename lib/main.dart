import 'package:flutter/material.dart';

void main() => runApp(QuizzyApp());

class QuizzyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizzyState();
  }
}

class QuizzyState extends State<QuizzyApp> {
  var questionIndex = 0;

  void answerClicked() {
    setState(() {
      if (questionIndex < 1) {
        questionIndex += 1;
      }
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerClicked,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 clicked'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 clicked');
              },
            ),
          ],
        ), //Column
      ), //Scaffold
    ); //MaterialApp
  }
}
