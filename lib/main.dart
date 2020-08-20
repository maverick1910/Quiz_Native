import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'qtxt': 'Who was the First President of India',
      'ans': [
        {'text': 'Venkaiah Naidu', 'score': 0},
        {'text': 'Rajendra Prasad', 'score': 10},
        {'text': 'Nehru', 'score': 0},
        {'text': 'Vikram Sarabai', 'score': 0},
      ],
    },
    {
      'qtxt': 'Who has the Highest Test Runs in the World ',
      'ans': [
        {'text': 'kohli', 'score': 0},
        {'text': 'Dravid', 'score': 0},
        {'text': 'Sachin', 'score': 10},
        {'text': 'Dhoni', 'score': 0},
      ],
    },
    {
      'qtxt': 'Who has the Highest Test Average in the world',
      'ans': [
        {'text': 'kohli', 'score': 0},
        {'text': 'Dravid', 'score': 0},
        {'text': 'Bradman', 'score': 10},
        {'text': 'Chahal', 'score': 0},
      ],
    },
    {
      'qtxt': 'Who is the youngest Billionaire in the World',
      'ans': [
        {'text': 'Kylie', 'score': 10},
        {'text': 'Mark', 'score': 0},
        {'text': 'Evan', 'score': 0},
        {'text': 'Bill', 'score': 0},
      ],
    },
    {
      'qtxt': 'Which company was the first to be founded ',
      'ans': [
        {'text': 'IBM', 'score': 10},
        {'text': 'Intel', 'score': 0},
        {'text': 'AT&T', 'score': 0},
        {'text': 'Atari Labs', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _onClick(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                onClick: _onClick,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
