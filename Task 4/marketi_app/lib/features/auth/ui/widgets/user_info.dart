import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({
    super.key,
    required this.nameController,
    required this.usernameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController nameController;
  final TextEditingController usernameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserInfoItem(
          controller: widget.nameController,
          validator: FormValidator.validateName,
          label: 'Your Name',
          hintText: 'Full Name',
          prefixIcon: Transform.scale(
            scale: 0.5,
            child: SvgPicture.asset(Assets.assetsImagesNameIcon),
          ),
        ),
        UserInfoItem(
          controller: widget.usernameController,
          validator: FormValidator.validateUsername,
          label: 'Username',
          hintText: 'username',
          prefixIcon: const Icon(Icons.person_outline),
        ),
        UserInfoItem(
          controller: widget.phoneController,
          validator: FormValidator.validatePhone,
          label: 'Phone Number',
          hintText: '+20 1501142409 ',
          prefixIcon: const Icon(Icons.phone_iphone_sharp),
        ),
        UserInfoItem(
          controller: widget.emailController,
          validator: FormValidator.validateEmail,
          label: 'Email',
          hintText: 'You@gmail.com',
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        UserInfoItem(
          controller: widget.passwordController,
          obscureText: true,
          validator: FormValidator.validatePassword,
          label: 'Password',
          hintText: 'Enter Your Password',
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          suffixIcon: const Icon(Icons.visibility_off),
        ),
        UserInfoItem(
          controller: widget.confirmPasswordController,
          obscureText: true,
          validator: (value){
            return FormValidator.validateConfirmPassword(
              widget.passwordController.text,
              widget.confirmPasswordController.text,
            );
          },
          label: 'Confirm Password',
          hintText: 'confirm Your Password',
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          suffixIcon: const Icon(Icons.visibility_off),
        ),
      ],
    );
  }
}
