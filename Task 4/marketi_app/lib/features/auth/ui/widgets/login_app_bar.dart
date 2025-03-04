import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 110),
          child: CustomBackButton(),
        ),
        Image.asset(
          Assets.assetsImagesLogoSplashScreen,
          height: 160,
        ),
      ],
    );
  }
}
