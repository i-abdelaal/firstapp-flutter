import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result({@required this.resultScore, @required this.resetHandler});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Your\'re awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You\'re ... strange!';
    } else {
      resultText = 'You\'re so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Play Again!'),
            onPressed: resetHandler,
          )
        ],
      );
  }
}
