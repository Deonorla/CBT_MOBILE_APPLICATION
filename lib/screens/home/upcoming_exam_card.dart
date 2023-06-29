import 'package:cached_network_image/cached_network_image.dart';
import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/models/question_paper_model.dart';
import 'package:cbt_mobile_application/widgets/app_icon_text.dart';
import 'package:flutter/material.dart';

class UpcomingExamCard extends StatelessWidget {
  const UpcomingExamCard({super.key, required this.model});
  final QuestionPaperModel model;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: size.width / 1.3,
          height: 230,
          decoration: BoxDecoration(
              border: Border.all(
                color: borderLineColor,
                width: 1,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 161, 207, 245),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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

                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // Wrap(
                    //     runAlignment: WrapAlignment.start,
                    //     spacing: 4,
                    //     runSpacing: 6,
                    //     children: [
                    //       ClipRRect(
                    //         child: Container(
                    //           width: size.width / 5,
                    //           height: size.height / 25,
                    //           decoration: BoxDecoration(
                    //               color: Colors.transparent,
                    //               borderRadius: const BorderRadius.all(
                    //                   Radius.circular(20)),
                    //               border: Border.all(
                    //                 color: borderLineColor,
                    //                 width: 1,
                    //                 style: BorderStyle.solid,
                    //               )),
                    //           child: Center(child: Text("PHY 101")),
                    //         ),
                    //       ),
                    //     ])
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
        )
      ],
    );
  }
}
