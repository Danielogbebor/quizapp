class QuizQuestions {
  const QuizQuestions(this.question, this.answer);
  final String question;
  final List<String> answer;

  List<String> getShuffledAnswers() {
    final shuffledanswers = List.of(answer);
    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}
