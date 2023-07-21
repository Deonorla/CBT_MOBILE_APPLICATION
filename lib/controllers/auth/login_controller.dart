import 'package:cbt_mobile_application/controllers/auth/auth_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password) {
    AuthController.instance.loginWithEmailAndPassword(email, password);
  }
}
