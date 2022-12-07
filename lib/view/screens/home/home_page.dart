import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telelon/core/decoration/text_form_field_decoration.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/theme/theme.dart';

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
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            backgroundColor: const Color(0xffFFFFFF),
            floating: true,
            snap: true,
            pinned: false,
            stretch: true,
            toolbarHeight: 140.0 + kToolbarHeight,
            title: Column(
              children: [
                TextFormField(
                  cursorColor: TelelonTheme.unSelectedColor,
                  decoration: InputDecoration(
                    hintText: "search".tr(),
                    suffixIcon: IconButton(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/home/sort.svg",
                      ),
                    ),
                    prefixIcon: SvgPicture.asset("assets/home/search.svg",
                        height: 5, width: 5, fit: BoxFit.scaleDown),
                    filled: true,
                    fillColor: const Color(0xffEEEEEE),
                    enabledBorder: TelelonTextFormFieldDecoration.enabledBorder,
                    focusedBorder: TelelonTextFormFieldDecoration.enabledBorder,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: SizedBox(
                                  height: context.height * 0.06,
                                  width: double.infinity,
                                  child: ItemButton(
                                      text: Text("phone".tr()),
                                      icon: SvgPicture.asset(
                                          "assets/home/phone.svg")))),
                          SizedBox(
                            width: context.width * 0.02,
                          ),
                          Expanded(
                              child: SizedBox(
                            height: context.height * 0.06,
                            width: double.infinity,
                            child: ItemButton(
                                text: Text("computer".tr()),
                                icon: SvgPicture.asset(
                                    "assets/home/computer.svg")),
                          ))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: SizedBox(
                                height: context.height * 0.06,
                                width: double.infinity,
                                child: ItemButton(
                                    text: Text("tablet".tr()),
                                    icon: SvgPicture.asset(
                                        "assets/home/tablet.svg")))),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        Expanded(
                            child: SizedBox(
                                height: context.height * 0.06,
                                width: double.infinity,
                                child: ItemButton(
                                    text: Text("acessuar".tr()),
                                    icon: SvgPicture.asset(
                                        "assets/home/airpod.svg"))))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Text("Hello");
          }))
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

class ItemButton extends StatelessWidget {
  final Text text;
  final Widget icon;
  const ItemButton({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(color: Color(0xff999999))),
            backgroundColor: const Color(0xffEEEEEE),
            foregroundColor: const Color(0xff111111)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [text, icon],
        ));
  }
}
