import 'package:marketi_app/core/api/end_points.dart';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final String? image;
  final String? role;
  final String? address;

  UserModel({
    this.address,
    required this.name,
    required this.email,
    required this.phone,
     this.image,
     this.role,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json[ApiKey.name],
      email: json[ApiKey.email],
      phone: json[ApiKey.phone],
      image: json[ApiKey.image],
      role: json[ApiKey.role],
    );
  }
}
