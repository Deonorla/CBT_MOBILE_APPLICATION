import 'package:cbt_mobile_application/services/firebase_storage_service.dart';
import 'package:get/get.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final controller = Get.put(FirebaseStorageService());
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["physics"];
    try {
      for (var img in imgName) {
        final imgUrl = await controller.getImage(img);
        if (imgUrl != null) {
          allPaperImages.add(imgUrl);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
