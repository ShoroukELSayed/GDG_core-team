import 'package:marketi_app/core/api/end_points.dart';

class BrandModel {
  final String name;
  final String emoji;

  BrandModel({required this.emoji, required this.name});

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      name: json[ApiKey.name],
      emoji: json[ApiKey.emoji],
    );
  }
}
