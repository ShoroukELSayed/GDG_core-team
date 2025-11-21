import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HyperLink extends StatelessWidget {
   HyperLink({
    super.key,
    required this.text,
    required this.color,
    required this.alignment,  this.onTap,
  });
  final String text;
  final Color color;
  final AlignmentGeometry alignment;
   VoidCallback? onTap = (){} ;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
