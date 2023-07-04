import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Matric Number"),
                  prefixIcon: Icon(Icons.contact_emergency),
                  border: OutlineInputBorder(borderSide: BorderSide())),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
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
                  onPressed: () {},
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
