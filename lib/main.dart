import 'package:flutter/material.dart';

void main() => runApp(QuizzyApp());

class QuizzyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quizzy')), //Appbar
        body: Text('Answer the quiz!'),
      ), //Scaffold
    ); //MaterialApp
  }
}
