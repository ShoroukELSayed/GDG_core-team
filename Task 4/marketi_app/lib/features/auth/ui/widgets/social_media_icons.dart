import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icon_item.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIconsItem(
          icon: Image.asset(Assets.assetsImagesGoogleIcon),
          onPressed: () {},
        ),
        SocialMediaIconsItem(
          icon: Image.asset(Assets.assetsImagesAppleIcon),
          onPressed: () {},
        ),
        SocialMediaIconsItem(
          icon: Image.asset(Assets.assetsImagesFacebookIcon),
          onPressed: () {},
        ),
      ],
    );
  }
}
