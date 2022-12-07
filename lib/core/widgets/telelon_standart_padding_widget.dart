import 'package:flutter/cupertino.dart';
import 'package:telelon/core/extension/size_config_extension.dart';

class TelelonStandartPadding extends StatelessWidget {
  final Widget child;
  const TelelonStandartPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
      child: child,
    );
  }
}
