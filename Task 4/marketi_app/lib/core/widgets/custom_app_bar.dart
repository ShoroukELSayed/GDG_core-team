import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';
import 'package:marketi_app/core/widgets/notifications_icon.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';
import 'package:marketi_app/core/widgets/shopping_cart_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backButton = true,
    this.notification = false,
    this.shoppingCart = false,
    this.profilePhoto = false,
  });

  final String title;
  final bool backButton;
  final bool notification;
  final bool shoppingCart;
  final bool profilePhoto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (backButton) const CustomBackButton(),
        const Spacer(),
        Text(
          title,
          style: AppStyles.semiBold20,
        ),
        const Spacer(),
        if (notification) const NotificationsIcon(),
        if (shoppingCart) const ShoppingCartIcon(),
        if (profilePhoto)
          ProfilePhoto(
            radius: 30.r,
            image: FileImage(File(context.watch<UserPortfolioCubit>().profilePic.path)),
          ),
      ],
    );
  }
}
