import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.colors, required this.categoryName, this.onTap,
  });
  final String categoryName;
  final List <Color> colors ;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 73.17,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 23,
              offset: const Offset(0, 6),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 58.78,
                width: 54.88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient:  LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                     colors[0],
                     colors[1],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
               Text(
                categoryName,
                style: const TextStyle(
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}