import 'package:flutter/material.dart';
import 'colors.dart';

class UiConstant {
  static AppBar appBar() {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      centerTitle: false,
      title: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(children: [
            TextSpan(
                text: "Welcome \n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "Oluleye Emmanuel",
                style: TextStyle(
                  color: Color.fromARGB(255, 43, 42, 42),
                  fontSize: 15,
                ))
          ])),
      leading: Container(
        margin: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
          child: Image.asset("assets/images/splash_images/avatar.png"),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            child: const Icon(
              Icons.notifications_outlined,
              size: 25,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
