import 'package:flutter/material.dart';
import 'package:telelon/core/router/router.dart';
import 'package:telelon/core/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: TelelonTheme.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      onGenerateRoute: RouteGenerator.router.onGenerate,
    );
  }
}
