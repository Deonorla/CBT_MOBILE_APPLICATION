import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/models/question_paper_model.dart';
import 'package:cbt_mobile_application/widgets/app_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingExamCard extends StatelessWidget {
  const UpcomingExamCard({super.key, required this.model});
  final QuestionPaperModel model;
  @override
  Widget build(BuildContext context) {
    Get.put(QuestionPaperController);
    final size = MediaQuery.of(context).size;
    List color = const [
      Color.fromARGB(255, 205, 152, 152),
      Color(0xffB4C6A6),
      Color.fromARGB(255, 189, 167, 175),
      Color.fromARGB(255, 137, 172, 157),
      Color.fromARGB(255, 199, 182, 143),
      Color.fromARGB(255, 148, 192, 221),
    ];
    Color randColor() {
      return color[Random().nextInt(6)];
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                QuestionPaperController.instance
                    .navigateToQuestions(paper: model);
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: randColor(),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          child: Container(
                            width: size.width / 4,
                            height: size.height / 25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "20 June, 2013",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        CachedNetworkImage(
                          width: 50,
                          height: 50,
                          imageUrl: model.imageUrl!,
                          placeholder: (context, url) => Container(
                            alignment: Alignment.center,
                            child: const CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                              "assets/images/splash_images/books-pile.png"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          model.title,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          model.description,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppIconText(
                            icon: const Icon(
                              Icons.help_outline_sharp,
                              color: Colors.black,
                            ),
                            text: Text(
                              '${model.questionCount} questions',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        AppIconText(
                            icon: const Icon(
                              Icons.timer,
                              color: Colors.black,
                            ),
                            text: Text(
                              model.timeInMinutes(),
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
