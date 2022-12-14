import 'package:flutter/cupertino.dart';

class TelelonMessageScreen extends StatelessWidget {
  final String message;
  const TelelonMessageScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
