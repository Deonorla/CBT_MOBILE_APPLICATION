import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/constants/image_string.dart';
import 'package:cbt_mobile_application/constants/onboardingModel.dart';
import 'package:cbt_mobile_application/screens/splash/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPage(
        model: OnBoardingModel(
            bgColor: onboardingColorPage1,
            image: onboardingImagePage1,
            title: "Exam Prep",
            subTitle:
                "Write your exams and test seemlessly with interactive features",
            counterText: "1/3",
            height: size.height),
      ),
      OnBoardingPage(
        model: OnBoardingModel(
            bgColor: onboardingColorPage2,
            image: onboardingImagePage2,
            title: "Ready to Excel",
            subTitle:
                "Harness your potential, acquire knowledge, and dominate your exams with unwavering determination",
            counterText: "2/3",
            height: size.height),
      ),
      OnBoardingPage(
        model: OnBoardingModel(
            bgColor: onboardingColorPage3,
            image: onboardingImagePage3,
            title: "Unlock Your Success",
            subTitle:
                "Prepare diligently, believe in yourself, and seize the opportunity to shine in your exams",
            counterText: "3/3",
            height: size.height),
      ),
    ];

    return Scaffold(
        body: Stack(
      children: [LiquidSwipe(pages: pages)],
    ));
  }
}
