import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/add_to_cart.dart';
import 'package:marketi_app/features/Category/data/models/category_products_item_model.dart';
import 'package:marketi_app/features/Category/ui/widgets/product_delivery_info.dart';
import 'package:marketi_app/features/Category/ui/widgets/product_header_row.dart';
import 'package:marketi_app/features/Category/ui/widgets/product_image.dart';
import 'package:marketi_app/features/Category/ui/widgets/product_price_row.dart';

class CategoryProductsItem extends StatefulWidget {
  const CategoryProductsItem({
    super.key,
    required this.categoryProductsItemModel, required this.productModel,
  });
  final ProductModel productModel;
  final CategoryProductsItemModel categoryProductsItemModel;
  @override
  State<CategoryProductsItem> createState() => _CategoryProductsItemState();
}

class _CategoryProductsItemState extends State<CategoryProductsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w), 
      child: Row(
        children: [
          ProductImage(
            product: widget.productModel,
            width: 107.w, 
            height: 108.h, 
          ),
          Gap(8.h), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductHeaderRow(
                  productId: widget.categoryProductsItemModel.productId,
                    name: widget.categoryProductsItemModel.productName),
                Text(
                  widget.categoryProductsItemModel.productDescription,
                  style:
                      AppStyles.medium12.copyWith(color: AppColors.placeholder),
                ),
                ProductDeliveryInfo(
                    time: widget.categoryProductsItemModel.deliveryTime),
                ProductPriceRow(
                  rating: widget.categoryProductsItemModel.productRating,
                    price: widget.categoryProductsItemModel.productPrice),
                 AddToCart(productId:widget.categoryProductsItemModel.productId ,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
