import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rolldice/screens/question_Screen.dart';
import 'package:rolldice/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(startQuiz: switchScreen);
  // }

  @override
  Widget build(BuildContext context) {
    log("Quiz");
    Widget screenWidget = StartScreen(startQuiz: switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen();
    }
    return MaterialApp(
      title: 'Dice Roller',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black87],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
