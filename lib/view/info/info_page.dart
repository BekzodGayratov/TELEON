import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telelon/core/extension/size_config_extension.dart';
import 'package:telelon/core/widgets/telelon_app_bar_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TelelonAppBar(
        context: context,
        onBackTap: () {
          Navigator.pop(context);
        },
        title: const Text("iPhone 13 Pro Max 512Gb Silver 2-sim DUOS"),
        trial: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: context.height * 0.4,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://source.unsplash.com/random"),fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
