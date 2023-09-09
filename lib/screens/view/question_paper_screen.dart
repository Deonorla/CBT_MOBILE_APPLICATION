import 'package:cbt_mobile_application/controllers/question_paper/question_controller.dart';
import 'package:cbt_mobile_application/firebase_ref/loading_status.dart';
import 'package:cbt_mobile_application/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends GetView<QuestionController> {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      body: Container(
        child: Obx(() => Column(children: [
              if (controller.loadingStatus.value == LoadingStatus.loading)
                const Expanded(child: QuestionScreenHolder()),
              if (controller.loadingStatus.value == LoadingStatus.completed)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(controller.currentQuestion.value!.question)
                      ],
                    ),
                  ),
                )
            ])),
      ),
    );
  }
}
