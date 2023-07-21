import 'package:cbt_mobile_application/screens/signup/signup.dart';
import 'package:cbt_mobile_application/screens/signup/widgets/form_header_widget.dart';
import 'package:cbt_mobile_application/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/login_form_widget.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.only(top: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const FormHeaderWidget(
                title: "Welcome Back",
                subTitle: "Login to unlock your success",
                image:
                    "assets/images/splash_images/facebook-advertisement-tutorial.png"),
            const LoginFormWidget(),
            Center(
              child: TextButton(
                  onPressed: () {
                    Get.to(() => const SignUp());
                  },
                  child: const Text(
                    "Don't have an account? SignUp",
                    style: TextStyle(fontSize: 16),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
