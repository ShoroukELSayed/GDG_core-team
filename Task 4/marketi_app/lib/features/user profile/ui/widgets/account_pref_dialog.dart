import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/edit_info_dialog.dart';

class AccountPrefDialog extends StatelessWidget {
  const AccountPrefDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = context.watch<UserPortfolioCubit>().user;
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          'Account Preferences',
          style: AppStyles.semiBold20,
        ),
      ),
      content: SizedBox(
        height: 250.h,
        child: Column(
          spacing: 12.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfoItem(
              infoItem: 'Name : ${userData!.name}',
            ),
            UserInfoItem(
              infoItem: 'Email : ${userData.email}',
            ),
            UserInfoItem(
              infoItem: 'Phone : ${userData.phone}',
            ),
            UserInfoItem(
              infoItem: 'Address : ${userData.address ?? ' not added'}',
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: AppStyles.medium20.copyWith(
              color: AppColors.placeholder,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => EditInfoDialog(userData: userData),
            );
          },
          child: Text(
            'Edit',
            style: AppStyles.medium24.copyWith(color: AppColors.lightBlue100),
          ),
        ),
      ],
    );
  }
}

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({
    super.key,
    required this.infoItem,
  });
  final String infoItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue200),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Flexible(
            child: Text(infoItem,
            softWrap: true,
            ),
          ), 
        ],
      ),
    );
  }
}
