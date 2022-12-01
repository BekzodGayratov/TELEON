import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("assets/home/logo.svg"),
      ),
      body: Column(
        children: [TextFormField()],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
