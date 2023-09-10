import 'package:cbt_mobile_application/configs/themes/custom_text_style.dart';
import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_controller.dart';
import 'package:cbt_mobile_application/firebase_ref/loading_status.dart';
import 'package:cbt_mobile_application/widgets/main_button.dart';
import 'package:cbt_mobile_application/widgets/questions/answer_card.dart';
import 'package:cbt_mobile_application/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionScreen extends GetView<QuestionController> {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionController());
    return Scaffold(
      body: Obx(() => Column(children: [
            if (controller.loadingStatus.value == LoadingStatus.loading)
              const Expanded(child: SafeArea(child: QuestionScreenHolder())),
            if (controller.loadingStatus.value == LoadingStatus.completed)
              Expanded(
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 25,
                    ),
                    child: Column(
                      children: [
                        Text(
                          controller.currentQuestion.value!.question,
                          style: questionTs,
                        ),
                        GetBuilder<QuestionController>(
                            // id: 'answers_list',
                            builder: (context) {
                          return ListView.separated(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(top: 25),
                            itemBuilder: (BuildContext context, int index) {
                              final answer = controller
                                  .currentQuestion.value!.answers[index];
                              return AnswerCard(
                                answer:
                                    '${answer.identifier}. ${answer.answer}',
                                onTap: () {
                                  controller.selectedAnswer(answer.identifier);
                                },
                                isSelected: answer.identifier ==
                                    controller
                                        .currentQuestion.value!.selectedAnswer,
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 10),
                            itemCount: controller
                                .currentQuestion.value!.answers.length,
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ColoredBox(
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Row(children: [
                  Visibility(
                    visible: controller.isFirstQuestion,
                    child: SizedBox(
                        width: 55,
                        height: 55,
                        child: MainButton(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Theme.of(context).primaryColor,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Visibility(
                        child: MainButton(
                      onTap: () {
                        controller.nextquestion();
                      },
                      title: 'Next',
                    )),
                  )
                ]),
              ),
            )
          ])),
    );
  }
}
