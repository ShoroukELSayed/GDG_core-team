import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_medical/widgets/custom_text.dart';
import 'package:go_router/go_router.dart';
import '../constants/assets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    this.isSale = false,
    this.onTap,
  });

  final String image;
  final String title;
  final String subtitle;
  final String price;
  final bool isSale;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/ProductDitails'),
      child: Stack(
        children: [
          Container(
            height: 239,
            width: 159.93,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 23,
                  offset: const Offset(0, 6),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 147.22,
                  width: 159.93,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEEEF0),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffF8F9F9)),
                  ),
                  child: Center(child: Image(image: AssetImage(image))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      CustomText(
                        text: title,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        text: subtitle,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        text: price,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          isSale
              ? Positioned(
                  top: 0,
                  left: 0,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        Assets.resourceImagesSale,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Transform.rotate(
                          angle: -0.785398,
                          child: const CustomText(
                            text: 'SALE',
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ))
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
