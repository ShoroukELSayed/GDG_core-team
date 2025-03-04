import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserInfoItem(
          label: 'Your Name',
          hintText: 'Full Name',
          prefixIcon: Transform.scale(
            scale: 0.5,
            child: SvgPicture.asset(Assets.assetsImagesNameIcon),
          ),
        ),
        UserInfoItem(
          label: 'Username',
          hintText: 'username',
          prefixIcon: Icon(Icons.person_outline),
        ),
        UserInfoItem(
          label: 'Phone Number',
          hintText: '+20 1501142409 ',
          prefixIcon: Icon(Icons.phone_iphone_sharp),
        ),
        UserInfoItem(
          label: 'Email',
          hintText: 'You@gmail.com',
          prefixIcon: Icon(Icons.email_outlined),
        ),
        UserInfoItem(
          label: 'Password',
          hintText: 'Enter Your Password',
          prefixIcon: Icon(Icons.lock_outline_rounded),
          suffixIcon: Icon(Icons.visibility_off),
        ),
        UserInfoItem(
          label: 'Confirm Password',
          hintText: 'confirm Your Password',
          prefixIcon: Icon(Icons.lock_outline_rounded),
          suffixIcon: Icon(Icons.visibility_off),
        ),
      ],
    );
  }
}
