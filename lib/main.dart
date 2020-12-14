import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  void answerPressed() {
    setState(() {
      questionIndex += 1;
    });
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color?',
      'What is your favourite animal?',
      'Who is your favourite instructor?',
    ];
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
            Text(questions[questionIndex]),
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
