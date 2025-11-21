import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/home/ui/widgets/user_account_header.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserAccountHeader(),
            const Divider(),
            ListTile(
              leading: Icon(
                Icons.cached_outlined,
                size: 24.sp,
                color: AppColors.dartBlue900,
              ),
              title: Text(
                "Buy Again",
                style: AppStyles.semiBold18,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
                size: 24.sp,
                color: AppColors.dartBlue900,
              ),
              title: Text(
                "My Orders",
                style: AppStyles.semiBold18,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                size: 24.sp,
                color: AppColors.dartBlue900,
              ),
              title: Text(
                "Payments",
                style: AppStyles.semiBold18,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 24.sp,
                color: AppColors.dartBlue900,
              ),
              title: Text(
                "Account Settings",
                style: AppStyles.semiBold18,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(Assets.assetsImagesChatIcon),
              title: Text(
                "Support",
                style: AppStyles.semiBold18,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
