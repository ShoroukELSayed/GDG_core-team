import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_text.dart';
import 'package:gdg_medical/constants/assets.dart';
import '../widgets/option_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: ' My Profile',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(204, 14, 82, 255),
                  radius: 30,
                  child: Image(
                    image: AssetImage(Assets.resourceImagesProfileImage),
                    fit: BoxFit.cover,
                    height: 56,
                    width: 56,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Hi, Rahul kanjariya',
                      color: Color.fromARGB(150, 9, 28, 63),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: 'Welcome to  GDG Medical Store',
                      color: Color.fromARGB(150, 9, 28, 63),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            OptionProfile(
              icon: Assets.resourceImagesEditIcon,
              text: 'Edit Profile',
            ),
            Divider(),
            OptionProfile(
              icon: Assets.resourceImagesOrderIcon,
              text: 'My Orders',
            ),
            Divider(),
            OptionProfile(
              icon: Assets.resourceImagesBillIcon,
              text: 'Billing',
            ),
            Divider(),
            OptionProfile(
              icon: Assets.resourceImagesFaqIcon,
              text: 'Faq',
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
