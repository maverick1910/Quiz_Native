import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String getquestion;
  Question(this.getquestion);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          getquestion,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
