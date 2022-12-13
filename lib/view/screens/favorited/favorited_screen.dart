import 'package:flutter/material.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/widgets/telelon_standart_padding_widget.dart';

class FavoritedScreen extends StatelessWidget {
  const FavoritedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
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
              margin: EdgeInsets.symmetric(vertical: context.height * 0.008),
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
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                          SizedBox(
                            width: context.width * 0.03,
                          ),
                          Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            const Icon(Icons.favorite,color: Colors.black,),
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
    });
  }
}
