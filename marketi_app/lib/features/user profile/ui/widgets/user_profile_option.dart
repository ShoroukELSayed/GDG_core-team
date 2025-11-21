import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/custom_switch.dart';

class UserProfileOption extends StatelessWidget {
  const UserProfileOption({
    super.key,
    required this.name,
    required this.icon,
    this.isSwitch = false,
    this.onTap,
  });
  final String name;
  final Widget icon;
  final bool isSwitch;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Gap(16.w),
        Text(
          name,
          style: AppStyles.medium16.copyWith(
            color: AppColors.dartBlue900,
          ),
        ),
        const Spacer(),
        isSwitch
            ? const CustomSwitch()
            : InkWell(
                onTap: onTap,
                child: Container(
                  height: 22.h,
                  width: 22.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightBlue200),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                  ),
                ),
              ),
      ],
    );
  }
}
