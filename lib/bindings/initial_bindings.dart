import 'package:cbt_mobile_application/controllers/theme_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}
