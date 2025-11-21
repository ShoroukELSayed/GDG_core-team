import 'package:flutter/material.dart';
import 'package:juices/models/juice_model.dart';
import 'package:juices/widgets/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.juices});

  final List< JuiceModel> juices;

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0, 
        mainAxisSpacing: 8.0, 
      ),
      itemCount: juices.length, 
      itemBuilder: (context, index) {
        return ProductItem(juiceModel: juices[index]);
      },
    );
  }
}
