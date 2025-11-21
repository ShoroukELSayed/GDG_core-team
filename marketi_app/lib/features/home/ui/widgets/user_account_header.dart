import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';

class UserAccountHeader extends StatelessWidget {
  const UserAccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 18.h),
      child: Row(
        children: [
          ProfilePhoto(
            radius: 30,
            image: FileImage(
                File(context.watch<UserPortfolioCubit>().profilePic.path)),
          ),
          Gap(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,",
                style: AppStyles.regular16,
              ),
              Text(
                "Hi ${CacheHelper.getData(key: 'name')}!",
                style:
                    AppStyles.semiBold16.copyWith(color: AppColors.dartBlue900),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.close,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
