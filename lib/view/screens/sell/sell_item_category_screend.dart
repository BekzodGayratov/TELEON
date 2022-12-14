import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telelon/core/extension/size_config_extension.dart';

class SellItemCategoryScreen extends StatelessWidget {
  const SellItemCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.width * 0.03,
                  vertical: context.height * 0.02),
              child: Text(
                "Kategoriyani tanlang",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: context.width * 0.03, top: context.height * 0.02),
                    child: Text(
                      "Gadgetlar",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset("assets/sell/mac.svg"),
                    title: Text("Kompyuterlar")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/tablet.svg"),
                    onTap: () {},
                    title: Text("Planshet")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/phone.svg"),
                    onTap: () {},
                    title: Text("Telefon")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/watch.svg"),
                    onTap: () {},
                    title: Text("Smart soatlar")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/airpod.svg"),
                    onTap: () {},
                    title: Text("Naushniklar")),
              ],
            ),
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: context.width * 0.03, top: context.height * 0.02),
                    child: Text(
                      "Aksessuarlar",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset("assets/sell/pencil.svg"),
                    title: Text("Apple Pencil")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/bant.svg"),
                    onTap: () {},
                    title: Text("Planshet")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/charge.svg"),
                    onTap: () {},
                    title: Text("Telefon")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/keyboard.svg"),
                    onTap: () {},
                    title: Text("Smart soatlar")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/chexol.svg"),
                    onTap: () {},
                    title: Text("Naushniklar")),
                ListTile(
                    leading: SvgPicture.asset("assets/sell/cabel.svg"),
                    onTap: () {},
                    title: Text("Kabellar")),
              ],
            ),
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
        ],
      ),
    );
  }
}
