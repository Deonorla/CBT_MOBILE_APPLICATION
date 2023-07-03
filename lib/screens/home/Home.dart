import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/widgets/progress_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../controllers/question_paper/question_paper_controller.dart';
import 'upcoming_exam_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(QuestionPaperController());
    QuestionPaperController _questionPaperController = Get.find();
    return Obx(() => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProgressCard(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Today",
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                  children: _questionPaperController.allPapers
                      .map((items) => UpcomingExamCard(model: items))
                      .toList()),
            ],
          ),
        ));
  }
}
