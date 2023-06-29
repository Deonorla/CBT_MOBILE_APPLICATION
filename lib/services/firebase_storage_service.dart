import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../firebase_ref/references.dart';
// Function to download and load images from firebase

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef =
          firebaseStorage.child("question_paper_images").child("$imgName.png");
      var imgUrl = await urlRef.getDownloadURL();
      print(imgUrl);
      return imgUrl;
    } catch (e) {
      return null;
    }
  }
}
