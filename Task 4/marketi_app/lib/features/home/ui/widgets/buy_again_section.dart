import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/widgets/section_title.dart';
import 'package:marketi_app/features/home/ui/widgets/buy_again.dart';

class BuyAgainSection extends StatefulWidget {
  const BuyAgainSection({
    super.key,
  });

  @override
  State<BuyAgainSection> createState() => _BuyAgainSectionState();
}

class _BuyAgainSectionState extends State<BuyAgainSection> {
  @override
  void initState() {
    super.initState();
    final cartCubit = context.read<UserCartCubit>();
    cartCubit.getCartProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          name: 'Buy Again',
        ),
        BlocBuilder<UserCartCubit, UserCartState>(
          builder: (context, state) {
            if (state is UserCartLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserCartSuccess && state.products.isNotEmpty) {
              return BuyAgain(products: state.products);
            } else if (state is UserCartError) {
              return Text(state.message);
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
