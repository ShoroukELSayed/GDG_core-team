import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_states.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/section_title.dart';
import 'package:marketi_app/features/home/ui/widgets/popular_product_builder.dart';

class PopularProductsSection extends StatefulWidget {
  const PopularProductsSection({
    super.key,
  });

  @override
  State<PopularProductsSection> createState() => _PopularProductsSectionState();
}

class _PopularProductsSectionState extends State<PopularProductsSection> {
  @override
  void initState() {
    super.initState();
    final productCubit = context.read<ProductCubit>();
    productCubit.fetchSearchedProducts(searchQuery: "popular");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          name: 'Popular Products',
          onPressed: () => context.push(Routes.allProducts,
              extra: {
                "name":'Popular Products',
                "products":context.read<ProductCubit>().searchedProducts
              }),
        ),
        BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
          if (state is SearchSuccess) {
            return PopularProductBuilder(products: state.products);
          } else if (state is SearchError) {
            return Text(state.errMessage);
          } else if (state is SearchLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        }),
      ],
    );
  }
}
