import 'package:flutter/material.dart';

class BackgroundDecoration extends StatelessWidget {
  final Widget child;
  const BackgroundDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned.fill(
          bottom: height / 1.2,
          child: Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
        ),
        Positioned(child: SafeArea(child: child))
      ],
    );
  }
}
