import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clicked;
  final String answer;
  final int score;

  Answer(this.clicked, this.answer, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer, style: TextStyle(color: Colors.white)),
        onPressed: () => clicked(score),
        color: Colors.blue,
      ),
    );
  }
}
