import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications_none_outlined,
          color: AppColors.primaryColor,
          size: 30,
        ),
        Positioned(
          top: 4,
          right: 4,
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
