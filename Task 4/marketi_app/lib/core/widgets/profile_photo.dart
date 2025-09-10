import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.radius,
     required this.image,
  });
  final double radius;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.userProfile),
      child: CircleAvatar(
        radius: radius.r,
        backgroundColor: AppColors.primaryColor,
        child: CircleAvatar(
          radius: radius.r - 3,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: radius.r - 6,
            backgroundImage:
                image ,
          ),
        ),
      ),
    );
  }
}
