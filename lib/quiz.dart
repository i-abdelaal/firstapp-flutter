import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerHandler;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerHandler,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(
            answerText: answer['text'],
            selectHandler: ()=>answerHandler(answer['score']),
          );
        }).toList()
      ],
    );
  }
}
