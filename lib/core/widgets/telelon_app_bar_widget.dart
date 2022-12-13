import 'package:flutter/material.dart';
import 'package:telelon/core/extension/size_config_extension.dart';

class TelelonAppBar extends StatelessWidget implements PreferredSize {
  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.07);
  @override
  Widget get child => throw UnimplementedError();
  final Widget title;
  final Widget? trial;
  final Widget? leading;
  final BuildContext context;
  const TelelonAppBar(
      {Key? key,
      this.leading,
      required this.context,
  
      required this.title,
      this.trial})
      : super(key: key);

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.infinite,
      child: AppBar(
        leading: leading,
     
        title: title,
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
