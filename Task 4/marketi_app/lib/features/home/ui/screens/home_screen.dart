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
            const HomeAppBar(),
            const Gap(14),
            const SearchField(),
            const Gap(14),
            const OffersBuilder(),
            const Gap(14),
            const SectionTitle(
              name: 'Popular Products',
            ),
            const PopularProductBuilder(),
            const Gap(14),
            const SectionTitle(
              name: 'Category',
            ),
            const Gap(14),
            const Categories(),
            const Gap(14),
            const SectionTitle(
              name: 'Best for You',
            ),
            const BestForYou(),
            const Gap(14),
            const SectionTitle(
              name: 'Brands',
            ),
            const Brands(),
            const Gap(14),
            const SectionTitle(
              name: 'Buy Again',
            ),
            const BuyAgain(),
          ],
        ),
      ),
    );
  }
}
