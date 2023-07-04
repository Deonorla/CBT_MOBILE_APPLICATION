import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpWidgetForm extends StatelessWidget {
  const SignUpWidgetForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                label: Text("Full Name"),
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text("Matric Number"),
                prefixIcon: Icon(Icons.contact_emergency),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text("Phone Number"),
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.fingerprint),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey))),
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
                onPressed: () {},
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
