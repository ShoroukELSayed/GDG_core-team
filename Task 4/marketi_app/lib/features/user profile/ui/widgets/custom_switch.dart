import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      width: 50.w,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          activeTrackColor: AppColors.primaryColor,
          value: on,
          onChanged: (value) {
            setState(() {
              on = value;
            });
          },
        ),
      ),
    );
  }
}
