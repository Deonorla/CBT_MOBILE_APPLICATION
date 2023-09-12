import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  const AppCircleButton(
      {super.key,
      required this.child,
      this.color,
      this.width = 60,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
