import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  Result(this.finalScore);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 30) {
      resultText = 'You are awesome!';
    } else if (finalScore <= 50) {
      resultText = 'Pretty likeable';
    } else if (finalScore <= 80) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
