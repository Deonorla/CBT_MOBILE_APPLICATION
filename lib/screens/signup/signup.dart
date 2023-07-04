import 'package:cbt_mobile_application/screens/signup/widgets/form_header_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeaderWidget(
                title: "Get On Board",
                image: "assets/images/splash_images/sign.png",
                subTitle: "Create your profile to get onboarded",
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Form(
                    child: Column(
                  children: [],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
