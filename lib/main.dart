import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerPressed() => print('Answer pressed');
    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Quiz App'),
              RaisedButton(
                child: Text('?'),
                onPressed: answerPressed,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Text("Question 1"),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => print("Answer 1 pressed")),
            RaisedButton(child: Text('Answer 2'), onPressed: answerPressed),
            RaisedButton(child: Text('Answer 3'), onPressed: answerPressed),
          ],
        ),
      ),
    );
  }
}
