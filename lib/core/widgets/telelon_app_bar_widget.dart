import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telelon/core/extension/size_config_extension.dart';

class EduOnAppBar extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.07);
  @override
  Widget get child => throw UnimplementedError();
  final Widget title;
  final Widget? trial;
  final BuildContext context;
  final VoidCallback onTapMenu;
  final VoidCallback onTapAccount;
  const EduOnAppBar(
      {Key? key,
      required this.context,
      required this.onTapMenu,
      required this.onTapAccount,
      required this.title,
      this.trial})
      : super(key: key);

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.infinite,
      child: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: SvgPicture.asset(
          "assets/logo.svg",
          height: context.height * 0.04,
        ),
        actions: [
          trial ?? const SizedBox(),
          SizedBox(
            width: context.width * 0.03,
          ),
        ],
      ),
    );
  }
}
