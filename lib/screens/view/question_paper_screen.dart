import 'package:cbt_mobile_application/controllers/question_paper/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Container();
  }
}
