import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAns;
  final String ansText;
  Answer(this.selectAns, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(3),
      child: RaisedButton(
        color: Colors.blue[400],
        child: Text(ansText),
        onPressed: selectAns,
      ),
    );
  }
}
