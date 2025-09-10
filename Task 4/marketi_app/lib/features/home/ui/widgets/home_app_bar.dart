import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';
import 'package:marketi_app/core/widgets/notifications_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePhoto(
          radius: 30.r,
          image: FileImage(File(context.watch<UserPortfolioCubit>().profilePic.path)),
        ),
        Gap(10.w),
        Text(
          'Hi ${CacheHelper.getData(key: ApiKey.name)} !',
          style: AppStyles.semiBold20,
        ),
        const Spacer(),
        const NotificationsIcon()
      ],
    );
  }
}
