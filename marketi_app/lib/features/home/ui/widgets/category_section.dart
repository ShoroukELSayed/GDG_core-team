import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/categories%20cubit/categories_cubit.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/section_title.dart';
import 'package:marketi_app/features/home/ui/widgets/Categories.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    super.key,
  });

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  void initState() {
    super.initState();
    final categoryCubit = context.read<CategoriesCubit>();
    categoryCubit.fetchAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          name: 'Category',
          onPressed: () async {
            context.push(
              Routes.allCategories,
              extra: context.read<CategoriesCubit>().categories,
            );
          },
        ),
        Gap(14.h),
        BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) {
          if (state is CategoriesSuccess) {
            return Categories(categories: state.categories.sublist(0, 6));
          } else if (state is CategoriesError) {
            return Text(state.errMessage);
          } else if (state is CategoriesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox.shrink();
          }
        }),
      ],
    );
  }
}
