import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data["question_index"] as int) + 1).toString(),
                    style: const TextStyle(fontSize: 16)),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data["question"] as String,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(data["user_answer"] as String,
                          style: const TextStyle(fontSize: 16)),
                      Text(data["correct_answer"] as String,
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
