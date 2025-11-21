import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/cubits/user_favorite_cubit/user_favorite_cubit.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/search_item.dart';
import 'package:marketi_app/features/all%20products/ui/widgets/favorite_grid_view.dart';

class AllFavoriteScreen extends StatelessWidget {
  const AllFavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<UserFavoriteCubit>().getFavoriteProducts();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.h,
          left: 14.w,
          right: 14.w,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAppBar(
                title: 'Favorites',
                profilePhoto: true,
                backButton: false,
              ),
            ),
            SliverToBoxAdapter(child: Gap(14.h)),
            const SliverToBoxAdapter(child: SearchItem()),
            SliverToBoxAdapter(child: Gap(14.h)),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Products',
                  style: AppStyles.semiBold20,
                ),
              ),
            ),
            SliverToBoxAdapter(child: Gap(14.h)),
            BlocConsumer<UserFavoriteCubit, UserFavoriteState>(
              listener: (context, state) {
                if (state is UserFavoriteError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
              },
              builder: (context, state) {
                if (state is UserFavoriteLoading) {
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (state is UserFavoriteSuccess &&
                    state.products.isNotEmpty) {
                  return FavoriteGridViewBuilder(products: state.products);
                } else {
                  return const SliverToBoxAdapter(
                    child: Center(child: Text('No Favorites')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
