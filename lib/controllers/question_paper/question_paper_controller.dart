import 'package:cbt_mobile_application/firebase_ref/references.dart';
import 'package:cbt_mobile_application/models/question_paper_model.dart';
import 'package:cbt_mobile_application/screens/view/question_paper_screen.dart';
import 'package:cbt_mobile_application/services/firebase_storage_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class QuestionPaperController extends GetxController {
  // final allPaperImages = <String>[].obs;
  static QuestionPaperController get instance => Get.find();
  final controller = Get.put(FirebaseStorageService());
  final allPapers = <QuestionPaperModel>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["PHY 101"];
    try {
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      print(data);
      allPapers.assignAll(paperList);
      for (var paper in paperList) {
        final imgUrl = await controller.getImage(paper.title);
        paper.imageUrl = imgUrl;
        // if (imgUrl != null) {
        //   allPaperImages.add(imgUrl);
        // }
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }

  void navigateToQuestions({required QuestionPaperModel paper}) {
    Get.to(const QuestionScreen(), arguments: paper);
  }
}
