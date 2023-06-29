import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({super.key, required this.icon, required this.text});
  final Icon icon;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 4,
        ),
        text
      ],
    );
  }
}
