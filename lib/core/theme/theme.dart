import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelelonTheme {
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
