import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  TextIcon({super.key, required this.icon, required this.text});
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
        ),
        Text(text)
      ],
    );
  }
}
