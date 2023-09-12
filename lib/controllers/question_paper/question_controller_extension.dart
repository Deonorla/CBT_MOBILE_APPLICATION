import 'package:cbt_mobile_application/controllers/question_paper/question_controller.dart';

extension QuestionControllerExtension on QuestionController {
  int get correctQuestionCount => allQuestions
      .where((element) => element.selectedAnswer == element.correctAnswer)
      .toList()
      .length;

  String get correctAnsweredQuestions {
    return '$correctQuestionCount out of ${allQuestions.length} are correct ';
  }
}
