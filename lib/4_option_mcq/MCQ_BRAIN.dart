class McqQuestion {
  final String questionText;
  final List<McqAnswer> answerList;

  McqQuestion(this.questionText, this.answerList);

}

class McqAnswer {
  final  String mcq_answerText;
  final bool mcq_isCorrect;

  McqAnswer(this.mcq_answerText, this.mcq_isCorrect);
}

List<McqQuestion> getMcqQuestion() {
  List<McqQuestion> mcqlist = [];
    
    mcqlist.add(
        McqQuestion(
            "Whats your age?", [
              McqAnswer("10", false),
          McqAnswer("12", false),
          McqAnswer("15", false),
          McqAnswer("20", true),
        ]));
  mcqlist.add(
      McqQuestion(
          "Whats your name?", [
        McqAnswer("dd", false),
        McqAnswer("aa", false),
        McqAnswer("ss", false),
        McqAnswer("gg", true),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your father name?", [
        McqAnswer("aaa", false),
        McqAnswer("no name", true),
        McqAnswer("ddd", false),
        McqAnswer("fff", false),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your mother name?", [
        McqAnswer("awef ", false),
        McqAnswer("asdfaf", false),
        McqAnswer("no name either", true),
        McqAnswer("sdfbgb", false),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your age?", [
        McqAnswer("10", false),
        McqAnswer("12", false),
        McqAnswer("15", false),
        McqAnswer("20", true),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your name?", [
        McqAnswer("dd", false),
        McqAnswer("aa", false),
        McqAnswer("ss", false),
        McqAnswer("gg", true),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your father name?", [
        McqAnswer("aaa", false),
        McqAnswer("no name", true),
        McqAnswer("ddd", false),
        McqAnswer("fff", false),
      ]));
  mcqlist.add(
      McqQuestion(
          "Whats your mother name?", [
        McqAnswer("awef ", false),
        McqAnswer("asdfaf", false),
        McqAnswer("no name either", true),
        McqAnswer("sdfbgb", false),
      ]));


  //Add question here
  return mcqlist;
}