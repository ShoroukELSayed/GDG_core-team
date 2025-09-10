import 'package:marketi_app/core/api/end_points.dart';

class SignUpRequestModel {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;
  SignUpRequestModel({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      ApiKey.name: name,
      ApiKey.phone: phone,
      ApiKey.email: email,
      ApiKey.password: password,
      ApiKey.confirmPassword: confirmPassword,
    };
  }
}

class SignUpResponseModel {
  final String message;

  SignUpResponseModel({required this.message});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(
      message: json[ApiKey.message],
    );
  }
}
