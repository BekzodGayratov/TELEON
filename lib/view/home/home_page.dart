import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telelon/core/widgets/telelon_app_bar_widget.dart';
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
    List<Widget> screens = [
      MainScreen(
        currentIndex: _currentIndex,
      ),
      FavoritedScreen(),
      SellScreen(),
      ChatScreen(),
      ProfileScreen()
    ];

    List<PreferredSizeWidget> appBars = [
      AppBar(
        title: SvgPicture.asset("assets/home/logo.svg"),
      ),
      TelelonAppBar(
          context: context, leading: null, title: Text("Saqlanganlar")),
      TelelonAppBar(
          context: context, leading: null, title: Text("E'lon berish")),
      TelelonAppBar(context: context, leading: null, title: Text("Chat")),
      TelelonAppBar(context: context, leading: null, title: Text("Profile"))
    ];

    return Scaffold(
      appBar: appBars[_currentIndex],
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
              label: "home".tr()),
          BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset(
                      "assets/home/bottomNav/selected/favorite.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/favorite.svg"),
              label: "favorited".tr()),
          BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset("assets/home/bottomNav/selected/add.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/add.svg"),
              label: "sell".tr()),
          BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? SvgPicture.asset("assets/home/bottomNav/selected/chat.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/chat.svg"),
              label: "chat".tr()),
          BottomNavigationBarItem(
              icon: _currentIndex == 4
                  ? SvgPicture.asset(
                      "assets/home/bottomNav/selected/profile.svg")
                  : SvgPicture.asset(
                      "assets/home/bottomNav/unselected/profile.svg"),
              label: "profile".tr()),
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
