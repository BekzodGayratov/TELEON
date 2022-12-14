import 'package:flutter/material.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/theme/theme.dart';
import 'package:telelon/core/widgets/telelon_app_bar_widget.dart';
import 'package:telelon/core/widgets/telelon_standart_padding_widget.dart';
import 'package:telelon/view/info/utils.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: TelelonAppBar(
        context: context,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text("iPhone 13 Pro Max 512Gb Silver 2-sim DUOS"),
        trial: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.height * 0.4,
              width: double.infinity,
              child: PageView.builder(itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random"),
                          fit: BoxFit.cover)),
                );
              }),
            ),
            TelelonStandartPadding(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.width * 0.7,
                        child: Text(
                          "iPhone 13 Pro Max 512Gb Sliver",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "1099 y.e",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.width * 0.02),
                        child: Chip(
                            backgroundColor: Color(0xffF19D3B),
                            label: Text("Kami bor")),
                      ),
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
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffF6F6F6),
              thickness: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: context.height * 0.02,
                  horizontal: context.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Xaraketeristikalari",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Text("Iphone 13 pro max"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("Region Lla amerika"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("128gb"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("Siera blue"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("Xolati zo'r 1 qul ishlatilgan"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("Korobka dokument full"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("90%"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("Narxi: 990\$ kelishiladi"),
                  SizedBox(
                    height: context.height * 0.005,
                  ),
                  Text("+998993101137"),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  SizedBox(
                    height: context.height * 0.065,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_outlined),
                            Text("Sotuvchiga qo'ng'iroq qilish")
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffF6F6F6),
              thickness: 10,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.share,
                color: Color(0xff3486F9),
              ),
              title: Text(
                "Ushbu e'lonni ulashish",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3486F9)),
              ),
            ),
            const Divider(
              color: Color(0xffF6F6F6),
              thickness: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: context.height * 0.02,
                  horizontal: context.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Yaxshi narx",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.warning_amber_sharp,
                        color: Colors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        showValueIndicator:
                            ShowValueIndicator.onlyForContinuous,
                        overlayShape: SliderComponentShape.noOverlay,
                        trackShape: GradientRectSliderTrackShape(
                            gradient: gradient, darkenInactive: false),
                        activeTrackColor: Colors.red),
                    child: Slider.adaptive(
                        min: 0,
                        max: 10,
                        label: sliderValue.toString(),
                        thumbColor: Colors.black,
                        value: sliderValue,
                        onChanged: (v) {
                          setState(() {
                            sliderValue = v;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Arzon narx",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff999999))),
                      Text("Yaxshi narx",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff999999))),
                      Text("Qimmat narx",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff999999))),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: TelelonTheme.backgroundColor,
              thickness: 10,
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            Text(
              "O'xshash mahsulotlar",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: context.height * 0.32,
              width: double.infinity,
              child: ListView.builder(
                  key: UniqueKey(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.width * 0.03),
                            child: Container(
                              height: context.height,
                              width: context.width * 0.48,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/$index"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: context.width * 0.55,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: context.height * 0.01),
                                child: Text(
                                  "iPhone 13 Pro Max 512Gb Sliverrrrrrrrrrrrr",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Text(
                              "730 y.e",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ],
                    );
                  }),
            ),
            const Divider(
              color: Color(0xffF6F6F6),
              thickness: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "E'lonni ko'tarish",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3486F9)),
              ),
              subtitle: Text("1000 UZS"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            Container(
              height: context.height * 0.05,
              color: TelelonTheme.backgroundColor,
              child: TelelonStandartPadding(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ID: 2033342"),
                    Text("01 Noyabr 2022"),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye_outlined),
                        SizedBox(
                          width: context.width * 0.01,
                        ),
                        Text("880")
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.warning_amber,
                color: Colors.red,
              ),
              title: Text("Shikoyat qilish",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.red)),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(
              color: Color(0xffF6F6F6),
              thickness: 10,
            ),
            TelelonStandartPadding(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: context.height * 0.065,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff3486F9)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.chat),
                              Text("Chat"),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.04,
                  ),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: context.height * 0.065,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff34C759)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.phone_outlined),
                              Text("Qo'ng'iroq qilish")
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient gradient = LinearGradient(colors: <Color>[
    Color(0xffFFF2AC),
    Color(0xff0CD314),
    Color(0xffF83737),
  ]);
}
