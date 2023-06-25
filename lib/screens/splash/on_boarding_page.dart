import 'package:cbt_mobile_application/constants/onboardingModel.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: model.bgColor,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  model.title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 5),
                Text(
                  model.subTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Text(
            model.counterText,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
