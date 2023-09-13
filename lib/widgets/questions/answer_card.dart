import 'package:cbt_mobile_application/configs/themes/app_color.dart';
import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:cbt_mobile_application/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

enum AnswerStatus { correct, wrong, answered, notanswered }

class AnswerCard extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onTap;

  const AnswerCard(
      {super.key,
      required this.answer,
      this.isSelected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: isSelected
                ? answerSelectedColor()
                : Theme.of(context).cardColor,
            border: Border.all(
                color: isSelected
                    ? answerSelectedColor()
                    : answerSelectedBorder())),
        child: Text(
          answer,
          style: TextStyle(
              color: isSelected ? onSurfaceTextColor : null,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class CorrectAnswer extends StatelessWidget {
  const CorrectAnswer({super.key, required this.answer});
  final String answer;
  @override
  Widget build(BuildContext contex) {
    return Ink(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: correctAnswerColor.withOpacity(0.1)),
      child: Text(
        answer,
        style:
            TextStyle(color: correctAnswerColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class WrongAnswer extends StatelessWidget {
  const WrongAnswer({super.key, required this.answer});
  final String answer;
  @override
  Widget build(BuildContext contex) {
    return Ink(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: wrongAnswerColor.withOpacity(0.1)),
      child: Text(
        answer,
        style: TextStyle(color: wrongAnswerColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NotAnswered extends StatelessWidget {
  const NotAnswered({super.key, required this.answer});
  final String answer;
  @override
  Widget build(BuildContext contex) {
    return Ink(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: notAnsweredColor.withOpacity(0.1)),
      child: Text(
        answer,
        style: TextStyle(color: notAnsweredColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
