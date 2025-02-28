import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/onBoarding/data/page_view_item_model.dart';
import 'package:marketi_app/features/onBoarding/ui/widgets/page_view_item.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  static String id = 'OnboardingScreen';
  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          PageViewItem(
            controller: controller,
            pageViewItemModel: PageViewItemModel(
              image: Assets.assetsImagesIllustrationOnboarding1,
              title: 'Welcom to Marketi',
              description:
                  'Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
            ),
            pageIndex: 0,
          ),
          PageViewItem(
            controller: controller,
            pageViewItemModel: PageViewItemModel(
              image: Assets.assetsImagesIllustrationOnboarding2,
              title: 'Easy to Buy',
              description:
                  'Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.',
            ),
            pageIndex: 1,
          ),
          PageViewItem(
            controller: controller,
            pageViewItemModel: PageViewItemModel(
              image: Assets.assetsImagesIllustrationOnboarding3,
              title: 'Wonderful User Experience',
              description:
                  'Start exploring now and experience the convenience of online shopping at its best.',
            ),
            pageIndex: 2,
          ),
        ],
      ),
    );
  }
}
