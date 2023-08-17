// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrect;
  const QuestionIdentifier({
    Key? key,
    required this.questionIndex,
    required this.isCorrect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrect ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
      ),
    );
  }
}
