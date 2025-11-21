import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key, this.size = 33});
  final double size;

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int selectedStars = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return IconButton(
              onPressed: () {
                setState(() {
                  selectedStars = index + 1;
                });
              },
              icon: Icon(
                index < selectedStars ? Icons.star : Icons.star_border,
                color: index < selectedStars
                    ? Colors.amber
                    : AppColors.dartBlue900,
                size: widget.size.sp,
              ));
        }),
      ),
    );
  }
}
