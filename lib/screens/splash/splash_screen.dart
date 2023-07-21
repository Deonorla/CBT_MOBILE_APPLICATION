import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/question_paper/splash_screen_controller/onBoardingController.dart';
import 'package:cbt_mobile_application/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final obController = OnBoardingController();

    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Obx(
          () => LiquidSwipe(
            pages: obController.pages,
            slideIconWidget: obController.currentPage.value != 2
                ? const Icon(Icons.arrow_back_ios_new)
                : Container(),
            enableSideReveal: true,
            onPageChangeCallback: obController.onPageChange,
            liquidController: obController.controller,
            enableLoop: false,
          ),
        ),
        Obx(
          () => Positioned(
              bottom: size.height / 14,
              child: obController.currentPage.value != 2
                  ? OutlinedButton(
                      onPressed: () => obController.animateToNextSlide(),
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.black26),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15),
                          foregroundColor: Colors.white),
                      child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            color: darkColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_forward_ios)),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        Get.offAll(const SignUp());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, elevation: 0),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    )),
        ),
        Obx(
          () => Positioned(
              top: size.height / 16,
              right: size.width / 15,
              child: TextButton(
                onPressed: () => obController.skip(),
                child: obController.currentPage.value != 2
                    ? const Text("Skip", style: TextStyle(color: Colors.grey))
                    : const SizedBox(),
              )),
        ),
        Obx(
          () => Positioned(
              bottom: size.height / 23,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Color(0xff272727), dotHeight: 5),
              )),
        )
      ],
    ));
  }
}
