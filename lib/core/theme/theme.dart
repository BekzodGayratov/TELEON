import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelelonTheme {
  static Color unSelectedColor = const Color(0xff999999);
  static ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff111111),
        systemOverlayStyle: SystemUiOverlayStyle(
            systemStatusBarContrastEnforced: true,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark)),
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
  );
}
