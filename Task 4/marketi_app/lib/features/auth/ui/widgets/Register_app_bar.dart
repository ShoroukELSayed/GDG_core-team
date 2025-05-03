import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBackButton(),
        Image.asset(
          Assets.assetsImagesLogoSplashScreen,
          height: 160,
        ),
      ],
    );
  }
}
