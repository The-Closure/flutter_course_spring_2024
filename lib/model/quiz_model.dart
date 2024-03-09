// ignore_for_file: public_member_api_docs, sort_constructors_first


class Question {
  String qeustionSyntax;
  List<String> answers;
  int indexOfCorrectAnswer;
  Question({
    required this.qeustionSyntax,
    required this.answers,
    required this.indexOfCorrectAnswer,
  });
}
