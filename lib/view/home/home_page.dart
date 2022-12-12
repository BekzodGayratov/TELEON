import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telelon/core/decoration/text_form_field_decoration.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/theme/theme.dart';
import 'package:telelon/view/screens/chat/chat_screen.dart';
import 'package:telelon/view/screens/favorited/favorited_screen.dart';
import 'package:telelon/view/screens/main/main_screen.dart';
import 'package:telelon/view/screens/profile/profile_screen.dart';
import 'package:telelon/view/screens/sell/sell_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List screens = [
      MainScreen(
        currentIndex: _currentIndex,
      ),
      FavoritedScreen(),
      SellScreen(),
      ChatScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("assets/home/logo.svg"),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset("assets/home/bottomNav/selected/home.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/home.svg"),
              label: "Asosiy"),
          BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset(
                      "assets/home/bottomNav/selected/favorite.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/favorite.svg"),
              label: "Asosiy"),
          BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset("assets/home/bottomNav/selected/add.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/add.svg"),
              label: "Asosiy"),
          BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? SvgPicture.asset("assets/home/bottomNav/selected/chat.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/chat.svg"),
              label: "Asosiy"),
          BottomNavigationBarItem(
              icon: _currentIndex == 4
                  ? SvgPicture.asset(
                      "assets/home/bottomNav/selected/profile.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/profile.svg"),
              label: "Asosiy"),
        ],
        onTap: (v) {
          setState(() {
            _currentIndex = v.toInt();
          });
        },
      ),
    );
  }
}
