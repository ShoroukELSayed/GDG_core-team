import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';
import 'package:marketi_app/features/home/ui/widgets/notifications_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePhoto(),
        Gap(10),
        Text(
          'Hi Shorouk !',
          style: AppStyles.semiBold20,
        ),
        Spacer(),
        NotificationsIcon()
      ],
    );
  }
}
