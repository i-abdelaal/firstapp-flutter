import 'package:flutter/material.dart';

import 'screens/quiz/quiz_screen.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: Headline6Style),
        ),
        textTheme: TextTheme(
          subtitle1: Subtitle1Style,
          bodyText1: BodyText1Style,
        ),
      ),
    );
  }
}
