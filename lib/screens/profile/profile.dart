import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/controllers/auth/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/detail_field.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(children: [
                Image.asset('assets/images/splash_images/avatar2.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Oluleye Emmanuel",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ]),
              const SizedBox(
                height: 50,
              ),
              DetailField(
                size: size,
                detail: 'Male',
                icon: const Icon(
                  CupertinoIcons.person,
                  color: darkColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DetailField(
                size: size,
                detail: 'CPE/17/3135',
                icon: const Icon(
                  CupertinoIcons.square_stack_3d_up,
                  color: darkColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DetailField(
                size: size,
                detail: 'First Semester',
                icon: const Icon(
                  CupertinoIcons.book,
                  color: darkColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DetailField(
                size: size,
                detail: 'CGPA - 4.90',
                icon: const Icon(
                  CupertinoIcons.chart_bar,
                  color: darkColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DetailField(
                size: size,
                detail: 'Computer Engineering',
                icon: const Icon(
                  CupertinoIcons.house_alt,
                  color: darkColor,
                  size: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton.icon(
                  onPressed: () {
                    controller.logout();
                  },
                  icon: const Icon(
                    CupertinoIcons.power,
                    size: 20,
                    color: darkColor,
                  ),
                  label: const Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 18,
                        color: darkColor,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
