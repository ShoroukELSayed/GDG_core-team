import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/brands%20cubit/brands_cubit.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/section_title.dart';
import 'package:marketi_app/features/home/ui/widgets/brands.dart';

class BrandsSection extends StatefulWidget {
  const BrandsSection({
    super.key,
  });

  @override
  State<BrandsSection> createState() => _BrandsSectionState();
}

class _BrandsSectionState extends State<BrandsSection> {
  @override
  void initState() {
    super.initState();
    final brandCubit = context.read<BrandsCubit>();
    brandCubit.fetchBrands();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          name: 'Brands',
          onPressed: () => context.push(Routes.allBrands,
              extra: context.read<BrandsCubit>().allBrands),
        ),
        BlocBuilder<BrandsCubit, BrandsState>(
          builder: (context, state) {
            if (state is BrandsSuccess) {
              return Brands(
                brands: state.brands,
              );
            } else if (state is BrandsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is BrandsError) {
              return Text(state.errMessage);
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
