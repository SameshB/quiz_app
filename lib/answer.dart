import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerPressedHandler;
  final String answerText;
  Answer(this.answerPressedHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: answerPressedHandler,
      ),
    );
  }
}
