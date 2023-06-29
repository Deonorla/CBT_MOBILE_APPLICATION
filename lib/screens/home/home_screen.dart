import 'package:cached_network_image/cached_network_image.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/screens/home/upcoming_exam_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFEBEB),
          elevation: 0,
          leading: CircleAvatar(
            child: Image.asset("assets/images/splash_images/avatar.png"),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              size: 25,
            )
          ],
        ),
        body: Obx(
          () => ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return UpcomingExamCard(
                  model: _questionPaperController.allPapers[index]);
            },
            separatorBuilder: (BuildContext context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: _questionPaperController.allPapers.length,
          ),
        ));
  }
}
