import 'package:marketi_app/core/api/end_points.dart';

class CategoryModel {
  final String slug;
  final String name;
  final String image;
  final String url;

  CategoryModel({required this.url, 
    required this.slug,
    required this.name,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      slug: json[ApiKey.slug],
      name: json[ApiKey.name],
      image: json[ApiKey.image],
      url: json[ApiKey.url],
    );
  }
}
