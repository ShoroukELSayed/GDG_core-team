import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color,
    this.decoration,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Overpass',
        color: color,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
