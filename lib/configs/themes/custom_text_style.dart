import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:cbt_mobile_application/configs/themes/ui_parameters.dart';
import 'package:flutter/material.dart';

TextStyle cartTitles(context) => TextStyle(
    color: UIParameters.isDarkMode(context)
        ? Theme.of(context).textTheme.bodyLarge!.color
        : Theme.of(context).primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold);
const questionTs = TextStyle(fontSize: 16, fontWeight: FontWeight.w800);
const detailText = TextStyle(fontSize: 12);
const headerText = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w700, color: onSurfaceTextColor);

const AppBarTS =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black);
