import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telelon/core/decoration/text_form_field_decoration.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/theme/theme.dart';
import 'package:telelon/core/widgets/telelon_standart_padding_widget.dart';

class MainScreen extends StatelessWidget {
  int currentIndex = 0;
  MainScreen({super.key, required this.currentIndex});
  final bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: bucket,
      child: CustomScrollView(
        key: PageStorageKey(currentIndex.toString()),
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
                                      icon: Image.asset(
                                          "assets/home/phone.png")))),
                          SizedBox(
                            width: context.width * 0.02,
                          ),
                          Expanded(
                              child: SizedBox(
                            height: context.height * 0.06,
                            width: double.infinity,
                            child: ItemButton(
                                text: Text("computer".tr()),
                                icon: Image.asset("assets/home/computer.png")),
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
                                    icon: Image.asset(
                                        "assets/home/tablet.png")))),
                        SizedBox(
                          width: context.width * 0.02,
                        ),
                        Expanded(
                            child: SizedBox(
                                height: context.height * 0.06,
                                width: double.infinity,
                                child: ItemButton(
                                    text: Text("acessuar".tr()),
                                    icon:
                                        Image.asset("assets/home/airpod.png"))))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(addRepaintBoundaries: true,
                  (context, index) {
            return InkWell(
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.pushNamed(context, 'info');
              },
              child: Column(
                children: [
                  const Divider(
                    color: Color(0xffF6F6F6),
                    thickness: 10,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: context.height * 0.008),
                    height: context.height * 0.31,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.height * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TelelonStandartPadding(
                              child: Text(
                                "iPhone 12 Pro Max 256",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TelelonStandartPadding(
                              child: const Text(
                                "730y.e",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          TelelonStandartPadding(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: context.height * 0.15,
                                    width: context.width * 0.28,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://source.unsplash.com/random/$index"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.03,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        "Batareyka: 83%",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: context.height * 0.01,
                                      ),
                                      const Text(
                                        "Komplekt: tolko",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: context.height * 0.01,
                                      ),
                                      const Text(
                                        "Remont: ne bil",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: context.height * 0.01,
                                      ),
                                      const Text(
                                        "Garantiya: nedalya",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.015,
                          ),
                          Expanded(
                            child: TelelonStandartPadding(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("01 Noyabr 2022"),
                                  Row(children: [
                                    const Icon(Icons.remove_red_eye_outlined),
                                    SizedBox(
                                      width: context.width * 0.01,
                                    ),
                                    const Text("880")
                                  ]),
                                  Row(children: const [
                                    Icon(
                                      Icons.recycling_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "6/y",
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ]),
                                  const Icon(Icons.favorite_border_outlined),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }))
        ],
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
