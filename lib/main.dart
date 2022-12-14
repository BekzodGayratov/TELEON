import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telelon/core/router/router.dart';
import 'package:telelon/core/theme/theme.dart';
import 'package:telelon/cubit/main/main_state.dart';
import 'package:telelon/view/home/home_page.dart';
import 'package:telelon/view/screens/sell/sell_item_category_screend.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      saveLocale: true,
      startLocale: const Locale('ru'),
      supportedLocales: const [Locale('uz'), Locale('ru')],
      path: "lib/core/lang",
      child: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => MainPageCubit()),
      ], child: MyApp())));
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
      //home: HomePage(),
    );
  }
}
