import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/models/dimensions_model.dart';
import 'package:marketi_app/core/models/meta_model.dart';
import 'package:marketi_app/core/models/review_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final int weight;
  final Dimensions dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<Review> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final Meta meta;
  final List<String> images;
  final String thumbnail;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json[ApiKey.id],
      title: json[ApiKey.title],
      description: json[ApiKey.description],
      category: json[ApiKey.category],
      price: json[ApiKey.price], 
      discountPercentage: json[ApiKey.discountPercentage],
      rating: json[ApiKey.rating],
      stock: json[ApiKey.stock],
      tags: List<String>.from(json[ApiKey.tags]),
      brand: json[ApiKey.brand],
      sku: json[ApiKey.sku],
      weight: json[ApiKey.weight],
      dimensions: Dimensions.fromJson(json[ApiKey.dimensions]),
      warrantyInformation: json[ApiKey.warrantyInformation],
      shippingInformation: json[ApiKey.shippingInformation],
      availabilityStatus: json[ApiKey.availabilityStatus],
      reviews:
          (json[ApiKey.reviews] as List).map((e) => Review.fromJson(e)).toList(),
      returnPolicy: json[ApiKey.returnPolicy],
      minimumOrderQuantity: json[ApiKey.minimumOrderQuantity],
      meta: Meta.fromJson(json[ApiKey.meta]),
      images: List<String>.from(json[ApiKey.images]),
      thumbnail: json[ApiKey.thumbnail],
    );
  }
}