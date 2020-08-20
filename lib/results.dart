import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetIt;
  Result(this.resultScore, this.resetIt);

  String get res {
    String resText;
    if (resultScore <= 50 && resultScore > 40) {
      resText = ('Damnn!! You Rock');
    } else if (resultScore <= 40 && resultScore > 20) {
      resText = ('You need to work more');
    }
    if (resultScore <= 20) {
      resText = ('You need to improve');
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            res,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              'Take the Quiz Again!',
            ),
            onPressed: resetIt,
          )
        ],
      ),
    );
  }
}
