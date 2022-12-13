import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:telelon/core/router/router.dart';
import 'package:telelon/core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      saveLocale: true,
      startLocale: const Locale('ru'),
      supportedLocales: const [Locale('uz'), Locale('ru')],
      path: "lib/core/lang",
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: ThemeMode.light,
      theme: TelelonTheme.themeData,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.router.onGenerate,
      initialRoute: 'splash',
    );
  }
}
