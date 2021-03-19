import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer({@required this.answerText, @required this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
