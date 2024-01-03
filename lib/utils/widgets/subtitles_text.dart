import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  final Color color;
  
  const SubtitleText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
