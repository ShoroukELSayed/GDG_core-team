import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_app_bar.dart';
import 'package:gdg_medical/widgets/row_of_product.dart';
import '../widgets/custom_text.dart';
import '../widgets/image_section.dart';
import '../widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FBFF),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 40,
        ),
        child: ListView(
          children: const [
            CustomText(
              text: 'Top Categories',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            Categories(),
            ImageSection(),
            Row(
              children: [
                CustomText(
                  text: 'Deals of the Day',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                Spacer(),
                CustomText(
                  text: 'More',
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            RowOfProduct(),
            SizedBox(
              height: 20,
            ),
            RowOfProduct(),
            SizedBox(
              height: 20,
            ),
            RowOfProduct(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}


