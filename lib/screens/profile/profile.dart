import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "My Profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
