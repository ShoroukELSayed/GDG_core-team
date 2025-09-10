import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCartCounter extends StatelessWidget {
  final int count;
  final Color color;

  const ShoppingCartCounter({
    super.key,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 20.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.w,
        ),
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          count > 9 ? "9+" : "$count",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
