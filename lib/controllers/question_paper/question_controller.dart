import 'package:cbt_mobile_application/models/question_paper_model.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  @override
  void onReady() {
    final _questionPaper = Get.arguments as QuestionPaperModel;
    print(_questionPaper.title);
    loadData(_questionPaper);
    super.onReady();
  }

  void loadData(Questions) {}
}
