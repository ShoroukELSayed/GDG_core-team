import 'package:marketi_app/core/api/end_points.dart';

class ProductFilterRequestModel {
  final int skip;
  final String search;
  final String brand;
  final String category;
  final String rating;
  final String price;
  final String discount;
  final bool popular;
  final int limit;

  ProductFilterRequestModel({
    this.skip = 0,
    required this.search,
    required this.brand,
    required this.category,
    required this.rating,
    required this.price,
    required this.discount,
    this.popular = false,
    required this.limit,
  });

  Map<String, dynamic> toJson() => {
        ApiKey.skip: skip,
        ApiKey.search: search,
        ApiKey.brand: brand,
        ApiKey.category: category,
        ApiKey.rating: rating,
        ApiKey.price: price,
        ApiKey.discount: discount,
        ApiKey.popular: popular,
        ApiKey.limit: limit,
      };
}
