// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizapp/questionidentifier.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;
  const SummaryItem({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData["user_answer"] == itemData["correct_answer"];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData["question_index"] as int,
            isCorrect: isCorrect),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lora(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(itemData["user_answer"] as String,
                  style: TextStyle(
                    fontSize: 18,
                    color: (isCorrect) ? Colors.green[800] : Colors.redAccent,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
