import 'package:flutter/material.dart';
import 'package:telelon/view/splash/splash_screen.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return _navigate(const SplashScreen());
    }
    return null;
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
