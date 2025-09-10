import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/widgets/add_button.dart';
import 'package:marketi_app/core/widgets/counter_controls.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({super.key, required this.productId});
  final int productId;

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 1;
  bool isAddedToCart = true;

  void _increment() {
    setState(() => count++);
  }

  void _decrement() {
    if (count > 1) {
      setState(() => count--);
    } else {
      setState(() => isAddedToCart = false);
      context.read<UserCartCubit>().removeProductFromCart(
            productId: widget.productId,
          );
    }
  }

  void _addToCart() {
    setState(() {
      isAddedToCart = true;
      count = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAddedToCart
        ? CounterControls(
            count: count,
            onIncrement: _increment,
            onDecrement: _decrement,
          )
        : AddButton(
            name: 'Add',
            onPressed: _addToCart,
          );
  }
}
