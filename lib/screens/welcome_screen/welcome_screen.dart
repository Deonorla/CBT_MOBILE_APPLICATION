import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/constants/image_string.dart';
import 'package:cbt_mobile_application/controllers/question_paper/splash_screen_controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final welcomeController = Get.put(WelcomeScreenController());

  @override
  Widget build(BuildContext context) {
    welcomeController.changeScreen();
    return Scaffold(
      backgroundColor: onboardingColorPage3,
      body: Center(
        child: Image.asset(
          welcomeImage,
          scale: 5,
        ),
      ),
    );
  }
}
