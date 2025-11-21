import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';
import 'package:marketi_app/core/widgets/shopping_cart_icon.dart';

class UserProfileAppBar extends StatelessWidget {
  const UserProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        Text(
          'My Profile',
          style: AppStyles.semiBold20,
        ),
        const Spacer(),
        const ShoppingCartIcon()
      ],
    );
  }
}
