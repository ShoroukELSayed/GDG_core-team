import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/widgets/add_button.dart';
import 'package:marketi_app/core/widgets/item_counter.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key, required this.productId});
  final int productId ;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAddedToCart = false;
  @override
  Widget build(BuildContext context) {
    return isAddedToCart == false
        ? AddButton(
            name: 'Add',
            onPressed: () {
              setState(() {
                context.read<UserCartCubit>().addProductToCart(productId: widget.productId);
                isAddedToCart = true;
              });
            },
          )
        :  ItemCounter(productId:widget.productId ,);
  }
}
