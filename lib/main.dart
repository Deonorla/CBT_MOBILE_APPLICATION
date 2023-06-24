import 'package:cbt_mobile_application/data_uploader_screen.dart';
import 'package:cbt_mobile_application/screens/splash/splash_screen.dart';
import 'package:cbt_mobile_application/screens/welcome_screen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Import the generated file
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
  
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(
    // Gets called only onnce on app start
//     home: DataUploaderScreen(),
//   ));
// }
