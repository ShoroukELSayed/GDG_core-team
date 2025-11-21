import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path myPath = Path();

    myPath.moveTo(size.width, 0);
    myPath.lineTo(size.width, size.height * 0.8);
    myPath.cubicTo(
      size.width,
      size.height * 0.4,
      0,
      size.height * 0.9,
      0,
      size.height * 0.4,
    );
    myPath.lineTo(0, 0);
    myPath.close();

    return myPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
