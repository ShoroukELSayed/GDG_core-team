import 'package:flutter/material.dart';
import 'package:juices/models/juice_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.juiceModel,
  });
  final JuiceModel juiceModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 162, 208, 223),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(juiceModel.image),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Text(
              juiceModel.name.split(',').take(2).join(''),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
