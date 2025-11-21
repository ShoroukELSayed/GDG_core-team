import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class StarIconButton extends StatefulWidget {
  const StarIconButton({
    super.key,
  });

  @override
  State<StarIconButton> createState() => _StarIconButtonState();
}

class _StarIconButtonState extends State<StarIconButton> {
  bool isStarred = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        isStarred = !isStarred;
        setState(() {});
      },
      icon: isStarred
          ?  Icon(
              Icons.star,
              size: 18.sp,
              color: AppColors.dartBlue900,
            )
          :  Icon(
              Icons.star_border,
              size: 18.sp,
            ),
    );
  }
}
