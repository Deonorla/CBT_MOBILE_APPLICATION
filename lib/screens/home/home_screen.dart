import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            child: SizedBox(
              height: 200,
              width: 200,
              child: FadeInImage(
                  placeholder:
                      AssetImage("assets/images/splash_images/books-pile.png"),
                  image: NetworkImage(
                      _questionPaperController.allPaperImages[index])),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: _questionPaperController.allPaperImages.length,
      ),
    );
  }
}
