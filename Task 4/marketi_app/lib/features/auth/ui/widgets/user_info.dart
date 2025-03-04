import 'package:flutter/material.dart';
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
          prefixIcon: Icons.person_outline,
        ),
        UserInfoItem(
          label: 'Username',
          hintText: 'username',
          prefixIcon:  Icons.person_outline,
        ),
        UserInfoItem(
          label: 'Phone Number',
          hintText: '+20 1501142409 ',
          prefixIcon:  Icons.phone_iphone_sharp,
        ),
        UserInfoItem(
          label: 'Email',
          hintText: 'You@gmail.com',
          prefixIcon:  Icons.email_outlined,
        ),
        UserInfoItem(
          label: 'Password',
          hintText: 'Enter Your Password',
          prefixIcon:  Icons.lock_outline_rounded,
          suffixIcon: Icons.visibility_off,
        ),
        UserInfoItem(
          label: 'Confirm Password',
          hintText: 'confirm Your Password',
          prefixIcon:  Icons.lock_outline_rounded,
          suffixIcon: Icons.visibility_off,
        ),
      ],
    );
  }
}
