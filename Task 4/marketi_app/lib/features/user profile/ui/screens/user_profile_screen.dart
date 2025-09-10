import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_state.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/user%20profile/data/profile_option_model.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/account_pref_dialog.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/profile_divider.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/rate_dialog.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/user_profile_header.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/user_profile_option.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      ProfileOptionModel(
          icon: const Icon(Icons.person_outline, color: AppColors.dartBlue900),
          name: 'Account Preferences',
          onTap: () => showDialog(
                context: context,
                builder: (context) {
                  context.read<UserPortfolioCubit>().getUserData();
                  return BlocBuilder<UserPortfolioCubit, UserStates>(
                    builder: (context, state) {
                      if (state is GetDataSuccess) {
                        return const AccountPrefDialog();
                      } else if (state is GetDataError) {
                        return Center(
                          child: Text(state.message),
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  );
                },
              )),
      const ProfileOptionModel(
        icon: Icon(Icons.credit_card, color: AppColors.dartBlue900),
        name: 'Subscription & Payment',
      ),
      const ProfileOptionModel(
        icon: Icon(Icons.notifications_outlined, color: AppColors.dartBlue900),
        name: 'App Notifications',
        isSwitch: true,
      ),
      const ProfileOptionModel(
        icon: Icon(Icons.dark_mode_outlined, color: AppColors.dartBlue900),
        name: 'Dark Mode',
        isSwitch: true,
      ),
      ProfileOptionModel(
        icon: const Icon(Icons.star_outline, color: AppColors.dartBlue900),
        name: 'Rate Us',
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => const RateDialog(),
          );
        },
      ),
      ProfileOptionModel(
        icon: Image.asset(Assets.assetsImagesFeedbackIcon,
            color: AppColors.dartBlue900),
        name: 'Provide Feedback',
      ),
      ProfileOptionModel(
        onTap: () => context.go(Routes.login),
        icon: const Icon(Icons.logout, color: Colors.red),
        name: 'Log Out',
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.separated(
          itemCount: options.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const CustomAppBar(
                title: 'My Profile',
                shoppingCart: true,
              );
            }
            if (index == 1) return const UserProfileHeader();

            final option = options[index - 2];
            return UserProfileOption(
              icon: option.icon,
              name: option.name,
              isSwitch: option.isSwitch,
              onTap: option.onTap,
            );
          },
          separatorBuilder: (context, index) {
            if (index == 0) return const Gap(0);
            if (index == 1) return Gap(30.h);
            return const ProfileDivider();
          },
        ),
      ),
    );
  }
}
