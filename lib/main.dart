import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void _answerPressed(int score) {
    setState(() {
      totalScore = totalScore + score;
      questionIndex += 1;
    });
    print(questionIndex);
  }

  void restartTest() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Red', 'score': 2},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 4}
        ]
      },
      {
        'questionText': 'What is your favourite animal?',
        'answers': [
          {'text': 'Snakes', 'score': 1},
          {'text': 'Lion', 'score': 2},
          {'text': 'Rabbit', 'score': 3}
        ]
      },
      {
        'questionText': 'Who is your favourite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
        ]
      },
    ];
    return MaterialApp(
      title: 'Personality',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality App'),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[questionIndex]['questionText']),
                  ...(questions[questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Answer(
                        () => _answerPressed(answer['score']), answer['text']);
                  }).toList()
                ],
              )
            : Result(totalScore, restartTest),
      ),
    );
  }
}
