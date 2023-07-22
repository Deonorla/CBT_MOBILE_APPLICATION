import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/auth/signup_controller.dart';
import 'package:cbt_mobile_application/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpWidgetForm extends StatelessWidget {
  const SignUpWidgetForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.grey))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: controller.matricNo,
                decoration: const InputDecoration(
                    label: Text("Matric Number"),
                    prefixIcon: Icon(Icons.contact_emergency),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.grey))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.grey))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.grey))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.fingerprint),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: Colors.grey))),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: darkColor,
                        padding: const EdgeInsets.symmetric(vertical: 10)),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        // SignUpController.instance.registerUser(
                        //     controller.email.text.trim(),
                        //     controller.password.text.trim());

                        //
                        final user = UserModel(
                            fullName: controller.fullName.text.trim(),
                            matricNo: controller.matricNo.text.trim(),
                            email: controller.email.text.trim(),
                            phoneNo: controller.phoneNo.text.trim(),
                            password: controller.password.text.trim());
                        SignUpController.instance.createUser(user);
                        SignUpController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                      }
                    },
                    child: Text(
                      "Sign up".toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 18),
                    )),
              )
            ],
          )),
    );
  }
}
