import 'package:flutter/material.dart';
import 'package:rolldice/data/questions.dart';
import 'package:rolldice/screens/widgets/answer_button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questions[0].text,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.white),
          ),
          SizedBox(height: 30),
          answerButton(answerText: "Answer 1", onTap: () {}),
          answerButton(answerText: "Answer 2", onTap: () {}),
          answerButton(answerText: "Answer 3", onTap: () {}),
          answerButton(answerText: "Answer 4", onTap: () {}),
        ],
      ),
    );
  }
}
