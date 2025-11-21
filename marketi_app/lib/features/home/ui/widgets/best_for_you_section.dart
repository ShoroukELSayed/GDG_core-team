import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_states.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/section_title.dart';
import 'package:marketi_app/features/home/ui/widgets/best_for_you.dart';

class BestForYouSection extends StatefulWidget {
  const BestForYouSection({
    super.key,
  });

  @override
  State<BestForYouSection> createState() => _BestForYouSectionState();
}

class _BestForYouSectionState extends State<BestForYouSection> {
  @override
  void initState() {
    super.initState();
    final productCubit = context.read<ProductCubit>();
    productCubit.fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          name: 'Best for You',
          onPressed: () => context.push(Routes.allProducts, extra: {
            "name": 'Best for You',
            "products": context.read<ProductCubit>().allProducts
          }),
        ),
        BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductsError) {
              return Text(state.errMessage);
            } else if (state is ProductsSuccess) {
              return BestForYou(
                bestForYou: context.read<ProductCubit>().allProducts,
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}
