import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_states.dart';
import 'package:marketi_app/features/Category/data/models/category_products_item_model.dart';
import 'package:marketi_app/features/Category/ui/widgets/category_products.dart';

class CategoryProductsBuilder extends StatefulWidget {
  const CategoryProductsBuilder({
    super.key,
  });

  @override
  State<CategoryProductsBuilder> createState() =>
      _CategoryProductsBuilderState();
}

class _CategoryProductsBuilderState extends State<CategoryProductsBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProductsError) {
          return Center(
            child: Text(state.errMessage),
          );
        } else if (state is ProductsSuccess) {
          final products = state.products;
          return Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.all(0),
                separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                      height: 1.h,
                    ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CategoryProductsItem(
                    productModel: products[index],
                    categoryProductsItemModel: CategoryProductsItemModel(
                      productRating: products[index].rating.toString(),
                      productId: products[index].id,
                      productPrice: products[index].price.toString(),
                      productName: products[index].title,
                      productImage: products[index].thumbnail,
                      productDescription: products[index].description,
                      deliveryTime: 'Deliver in 45 mins',
                    ),
                  );
                }),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
