import 'package:cbt_mobile_application/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryColorLight = Color(0xFFf85187);
const Color primaryLightColorLight = Color(0xFF3ac3cb);
const Color mainTextColorLight = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
        iconTheme: getIconTheme(),
        textTheme: getTextThemes().apply(
            bodyColor: mainTextColorLight, displayColor: mainTextColorLight));
  }
}
