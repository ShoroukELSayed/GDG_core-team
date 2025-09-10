import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/models/edit_user_data.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/models/user_model.dart';

class EditInfoDialog extends HookWidget {
  const EditInfoDialog({required this.userData, super.key});
  final UserModel userData;

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: userData.name);
    final TextEditingController phoneController =
        TextEditingController(text: userData.phone);
    final TextEditingController addressController =
        TextEditingController(text: userData.address ?? ' not added');
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          'Edit Info',
          style: AppStyles.semiBold20,
        ),
      ),
      content: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Name', style: AppStyles.semiBold16),
          EditInfoItem(
            controller: nameController,
          ),
          Text('Phone', style: AppStyles.semiBold16),
          EditInfoItem(
            controller: phoneController,
          ),
          Text('Address', style: AppStyles.semiBold16),
          EditInfoItem(
            controller: addressController,
          ),
        ],
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
          onPressed: () async {
            await context.read<UserPortfolioCubit>().updateUserData(
                  editUserData: EditUserData(
                    name: nameController.text,
                    phone: phoneController.text,
                    address: addressController.text,
                  ),
                );
            await context.read<UserPortfolioCubit>().getUserData();
            Navigator.of(context).pop();
          },
          child: Text(
            'Save',
            style: AppStyles.medium24.copyWith(color: AppColors.lightBlue100),
          ),
        ),
      ],
    );
  }
}

class EditInfoItem extends StatelessWidget {
  const EditInfoItem({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: AppStyles.regular16,
        border: _outlineInputBorder(),
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide(
          color: color ?? AppColors.lightBlue200,
        ),
      );
}
