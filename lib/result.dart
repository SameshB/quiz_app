import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartTestHandler;
  Result(this.resultScore, this.restartTestHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore < 4) {
      resultText = 'You\'re bad';
    } else if (resultScore < 6) {
      resultText = 'You\'re strange';
    } else if (resultScore < 8) {
      resultText = "You're pretty likeable";
    } else {
      resultText = "You're good";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 26),
        ),
        Text(
          'Personality Score:' + '$resultScore',
          style: TextStyle(fontSize: 18),
        ),
        RaisedButton(
          child: Text('Restart Test'),
          onPressed: restartTestHandler,
        )
      ],
    );
  }
}
