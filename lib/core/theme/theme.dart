import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelelonTheme {
  static Color unSelectedColor = const Color(0xff999999);
  static Color backgroundColor = const Color(0xffF6F6F6);
  static ThemeData themeData = ThemeData(
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: const Color(0xff111111),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)))),
    iconTheme: const IconThemeData(color: Color(0xff999999)),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff111111),
        systemOverlayStyle: SystemUiOverlayStyle(
            systemStatusBarContrastEnforced: true,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark)),
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
  );
}
