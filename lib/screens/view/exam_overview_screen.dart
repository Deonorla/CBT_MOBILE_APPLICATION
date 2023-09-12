import 'package:cbt_mobile_application/controllers/question_paper/question_controller.dart';
import 'package:cbt_mobile_application/widgets/common/custom_app_bar.dart';
import 'package:cbt_mobile_application/widgets/main_button.dart';
import 'package:cbt_mobile_application/widgets/questions/answer_card.dart';
import 'package:cbt_mobile_application/widgets/questions/countdown_timer.dart';
import 'package:cbt_mobile_application/widgets/questions/question_number_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamOverviewScreen extends GetView<QuestionController> {
  const ExamOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: controller.completedTest,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CountdownTimer(
                            color: Colors.black,
                            time: '',
                          ),
                          Obx(
                            () => Text(
                              '${controller.time}  Remaining',
                              style: const TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: GridView.builder(
                            itemCount: controller.allQuestions.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: Get.width ~/ 75,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8),
                            itemBuilder: (_, index) {
                              AnswerStatus? _answerStatus;
                              if (controller
                                      .allQuestions[index].selectedAnswer !=
                                  null) {
                                _answerStatus = AnswerStatus.answered;
                              }
                              return QuestionNumberCard(
                                index: index + 1,
                                status: _answerStatus,
                                onTap: () => controller.jumpToQuestion(index),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              ColoredBox(
                color: Colors.transparent,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: MainButton(
                    onTap: () {
                      controller.submit();
                    },
                    title: 'Submit',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
