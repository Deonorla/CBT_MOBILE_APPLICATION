import 'package:cbt_mobile_application/firebase_ref/references.dart';
import 'package:cbt_mobile_application/models/question_paper_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  late QuestionPaperModel questionPaperModel;
  @override
  void onReady() {
    final _questionPaper = Get.arguments as QuestionPaperModel;
    print(_questionPaper.title);
    loadData(_questionPaper);
    super.onReady();
  }

  Future<void> loadData(QuestionPaperModel questionPaper) async {
    questionPaperModel = questionPaper;
    try {
      await questionPaperRF.doc(questionPaper.id).collection("questions");
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
