import 'package:cbt_mobile_application/controllers/auth/auth_controller.dart';
import 'package:cbt_mobile_application/models/user_model.dart';
import 'package:cbt_mobile_application/repository/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

final userRepo = Get.put(UserRepository());

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final matricNo = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthController.instance.createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }
}
