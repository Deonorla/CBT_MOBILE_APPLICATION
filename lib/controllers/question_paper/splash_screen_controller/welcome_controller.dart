import 'package:cbt_mobile_application/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController {
  static WelcomeScreenController get find => Get.find();

  Future changeScreen() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(() => const SplashScreen());
  }
}
