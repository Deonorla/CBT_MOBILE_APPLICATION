import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/screens/home/upcoming_exam_card.dart';
import 'package:cbt_mobile_application/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: false,
          title: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(children: [
                TextSpan(
                    text: "Welcome \n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                    text: "Oluleye Emmanuel",
                    style: TextStyle(
                      color: Color.fromARGB(255, 43, 42, 42),
                      fontSize: 15,
                    ))
              ])),
          leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              child: Image.asset("assets/images/splash_images/avatar.png"),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_outlined,
                size: 25,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: primaryColor,
        body: Obx(() => Column(
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
                ListView.separated(
                  shrinkWrap: true,
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
              ],
            )));
  }
}
