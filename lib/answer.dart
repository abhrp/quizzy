import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clicked;
  final String answer;

  Answer(this.clicked, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer, style: TextStyle(color: Colors.white)),
        onPressed: clicked,
        color: Colors.blue,
      ),
    );
  }
}
