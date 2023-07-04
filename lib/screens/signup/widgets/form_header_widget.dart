import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            image,
          ),
          height: size.height * 0.25,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
