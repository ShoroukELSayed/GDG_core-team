import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/features/home/ui/widgets/Categories.dart';
import 'package:marketi_app/features/home/ui/widgets/best_for_you.dart';
import 'package:marketi_app/features/home/ui/widgets/brands.dart';
import 'package:marketi_app/features/home/ui/widgets/buy_again.dart';

import 'package:marketi_app/features/home/ui/widgets/home_app_bar.dart';
import 'package:marketi_app/features/home/ui/widgets/offers_builder.dart';
import 'package:marketi_app/features/home/ui/widgets/popular_product_builder.dart';
import 'package:marketi_app/features/home/ui/widgets/search_field.dart';
import 'package:marketi_app/core/widgets/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: [
            HomeAppBar(),
            Gap(14),
            SearchField(),
            Gap(14),
            OffersBuilder(),
            Gap(14),
            SectionTitle(
              name: 'Popular Products',
            ),
            PopularProductBuilder(),
            Gap(14),
            SectionTitle(
              name: 'Category',
            ),
            const Gap(14),
            Categories(),
            const Gap(14),
            SectionTitle(
              name: 'Best for You',
            ),
            BestForYou(),
            const Gap(14),
            SectionTitle(
              name: 'Brands',
            ),
            Brands(),
            const Gap(14),
            SectionTitle(
              name: 'Buy Again',
            ),
            BuyAgain(),
          ],
        ),
      ),
    );
  }
}
