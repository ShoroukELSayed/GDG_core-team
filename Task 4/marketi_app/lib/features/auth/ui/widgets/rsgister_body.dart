import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/auth/ui/widgets/register_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icons.dart';
import 'package:marketi_app/features/auth/ui/widgets/user_info.dart';

class RsgisterBody extends StatelessWidget {
  const RsgisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          RegisterAppBar(),
          UserInfo(),
          Gap(14),
          CustomButton.primary(
              text: 'Sign Up',
              onPressed: () {
                context.go(Routes.navigation);
              }),
          Gap(12),
          Text(
            'Or Continue With',
            textAlign: TextAlign.center,
            style: AppStyles.regular12,
          ),
          Gap(18),
          SocialMediaIcons(),
        ],
      ),
    );
  }
}
