import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final Function clicked;

  Quiz(
      {@required this.question,
      @required this.answers,
      @required this.clicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers.map((answer) {
          return Answer(clicked, answer['text'], answer['score']);
        }).toList()
      ],
    );
  }
}
