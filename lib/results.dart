import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> choosenAnswers;
  final void Function() onSelect;
  const ResultScreen(
      {super.key, required this.choosenAnswers, required this.onSelect});
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> Summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      Summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answer[0],
        "user_answer": choosenAnswers[i]
      });
    }
    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return SizedBox(
      height: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "you've answer $numCorrectQuestions questions correctly out of $numQuestions questions",
              style: const TextStyle(fontSize: 15, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: onSelect,
                child: const Text(
                  "restart quiz",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
