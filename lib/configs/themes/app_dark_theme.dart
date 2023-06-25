import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryDarkColorDark = Color(0xFF2e3c62);
const Color primaryColorDark = Color(0xFF99ace1);
const Color mainTextColorDark = Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
        iconTheme: getIconTheme(),
        textTheme: getTextThemes().apply(
            bodyColor: mainTextColorDark, displayColor: mainTextColorDark));
  }
}
