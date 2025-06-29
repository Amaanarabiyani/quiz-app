import 'package:flutter/material.dart';
import 'package:rolldice/screens/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Quiz(), debugShowCheckedModeBanner: false);
  }
}
