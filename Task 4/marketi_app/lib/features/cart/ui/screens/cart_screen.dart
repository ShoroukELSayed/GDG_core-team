import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/cart/ui/widgets/cart_body.dart';
import 'package:marketi_app/features/cart/ui/widgets/cart_empty.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    final cartCubit = context.read<UserCartCubit>();
    cartCubit.getCartProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            title: 'Cart',
            profilePhoto: true,
            backButton: false,
          ),
          BlocBuilder<UserCartCubit, UserCartState>(
            builder: (context, state) {
              if (state is UserCartLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is UserCartSuccess &&
                  state.products.isNotEmpty) {
                return CartBody(productsOnCart: state.products);
              } else if (state is UserCartError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              }
              return const CartEmpty();
            },
          )
        ],
      ),
    );
  }
}
