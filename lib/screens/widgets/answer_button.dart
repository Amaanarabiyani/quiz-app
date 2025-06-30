import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;
  const answerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(answerText));
  }
}
