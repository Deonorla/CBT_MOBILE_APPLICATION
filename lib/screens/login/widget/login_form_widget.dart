import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final controller = Get.put(LoginController());
    return Form(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.contact_emergency),
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label: const Text("Password"),
                  prefixIcon: const Icon(Icons.fingerprint),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp)),
                  border: const OutlineInputBorder(),
                  labelStyle: const TextStyle(color: Colors.grey),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey))),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text("Forgot Password?")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkColor,
                      padding: const EdgeInsets.all(10)),
                  onPressed: () {
                    LoginController.instance.loginUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  },
                  child: Text(
                    "Login".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
