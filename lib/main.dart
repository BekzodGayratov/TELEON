import 'package:flutter/material.dart';
import 'package:telelon/core/router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      onGenerateRoute: RouteGenerator.router.onGenerate,
    );
  }
}
