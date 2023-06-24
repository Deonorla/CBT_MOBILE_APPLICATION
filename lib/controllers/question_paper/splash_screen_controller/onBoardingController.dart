import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/onboardingModel.dart';
import '../../../screens/splash/on_boarding_page.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        bgColor: onboardingColorPage1,
        image: onboardingImagePage1,
        title: "Exam Prep",
        subTitle:
            "Write your exams and test seemlessly with interactive features",
        counterText: "1/3",
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        bgColor: onboardingColorPage2,
        image: onboardingImagePage2,
        title: "Ready to Excel",
        subTitle:
            "Harness your potential, acquire knowledge, and dominate your exams with unwavering determination",
        counterText: "2/3",
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        bgColor: onboardingColorPage3,
        image: onboardingImagePage3,
        title: "Unlock Your Success",
        subTitle:
            "Prepare diligently, believe in yourself, and seize the opportunity to shine in your exams",
        counterText: "3/3",
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChange(int activePageIndex) => currentPage.value = activePageIndex;
}
