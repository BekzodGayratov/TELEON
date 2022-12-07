import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telelon/core/decoration/text_form_field_decoration.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/widgets/telelon_standart_padding_widget.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            backgroundColor: Colors.transparent,
            title: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffEEEEEE),
                      border: TelelonTextFormFieldDecoration.enabledBorder),
                ),
              ],
            ),
            expandedHeight: 200,
            pinned: true,
          ),
          SliverFillRemaining(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  'Text $index',
                ),
              ),
            ),
          ),
        ],
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
