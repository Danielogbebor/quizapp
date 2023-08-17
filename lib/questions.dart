import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];

    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map((answer) => MyButtton(
                  text: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
