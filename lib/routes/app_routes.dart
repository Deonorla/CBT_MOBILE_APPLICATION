import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/screens/home/home_screen.dart';
import 'package:cbt_mobile_application/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        // GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(
            name: "/",
            page: () => const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuestionPaperController());
            }))
      ];
}
