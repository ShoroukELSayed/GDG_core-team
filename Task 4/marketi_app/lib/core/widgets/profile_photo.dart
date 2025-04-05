import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColors.primaryColor,
      child: CircleAvatar(
        radius: 27,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(Assets.assetsImagesProfile),
        ),
      ),
    );
  }
}
