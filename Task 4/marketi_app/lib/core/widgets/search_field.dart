import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        context.read<ProductCubit>().fetchSearchedProducts(searchQuery: value);
        context.push(Routes.category, extra: value);
      },
      decoration: InputDecoration(
        hintText: 'What are you looking for ? ',
        hintStyle: AppStyles.regular16,
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        border: _outlineInputBorder(),
        prefixIcon:  Icon(
          Icons.search,
          size: 40.sp,
          color: AppColors.dartBlue900,
        ),
        suffixIcon: Image.asset(Assets.assetsImagesFilterIcon),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(
          color: color ?? AppColors.rect,
        ),
      );
}
