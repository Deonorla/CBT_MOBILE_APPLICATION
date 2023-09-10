import 'package:cbt_mobile_application/configs/themes/app_color.dart';
import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:cbt_mobile_application/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

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
        ));
  }
}
