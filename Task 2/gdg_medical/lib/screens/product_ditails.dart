import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_text.dart';
import 'package:go_router/go_router.dart';

import '../constants/assets.dart';

class ProductDitails extends StatelessWidget {
  const ProductDitails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.pop(),
        ),
        actions: [
          const Spacer(
            flex: 8,
          ),
          GestureDetector(
            onTap: () => context.push('/NotificationScreen'),
            child: const Image(
              image: AssetImage(
                Assets.resourceImagesBtnNotification,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Image(
            image: AssetImage(
              Assets.resourceImagesBtnShoppingCart,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Sugar Free Gold Low Calories',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Etiam mollis metus non purus ',
                fontSize: 14,
                color: Color.fromARGB(126, 9, 15, 71),
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 166,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 220, 220),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Image(
                image: AssetImage(
                  Assets.resourceImagesOmronImage,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Row(
              children: [
                CustomText(
                  text: 'Rs.99',
                  fontSize: 18,
                  color: Color.fromARGB(149, 9, 15, 71),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),
                SizedBox(width: 8),
                CustomText(
                  text: 'Rs.56',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                CustomText(
                  text: 'Add to cart',
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            const CustomText(
              text: 'Etiam mollis ',
              fontSize: 14,
              color: Color.fromARGB(165, 9, 15, 71),
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 12),
            const Divider(),
            const CustomText(
              text: 'Product Details',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            const CustomText(
              text:
                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
              fontSize: 14,
              color: Color.fromARGB(93, 9, 15, 71),
              fontWeight: FontWeight.w300,
            ),
            const SizedBox(height: 20),
            const Row(children: [
              CustomText(
                text: 'Expiry Date',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 24),
              CustomText(
                text: '25/12/2023',
                fontSize: 14,
                color: Color.fromARGB(93, 9, 15, 71),
                fontWeight: FontWeight.w300,
              ),
            ]),
            const SizedBox(height: 20),
            const Row(children: [
              CustomText(
                text: 'Brand Name',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 24),
              CustomText(
                text: 'Something',
                fontSize: 14,
                color: Color.fromARGB(93, 9, 15, 71),
                fontWeight: FontWeight.w300,
              ),
            ]),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(0xff4157FF),
              ),
              child: const CustomText(
                text: 'Go to Cart',
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
