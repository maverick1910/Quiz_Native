import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function onClick;
  Quiz({
    @required this.onClick,
    @required this.questionIndex,
    @required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['qtxt']),
        ...(questions[questionIndex]['ans'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => onClick(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
