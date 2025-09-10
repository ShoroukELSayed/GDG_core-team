import 'package:marketi_app/core/api/end_points.dart';

class ResetPassRequestModel {
  final String email;
  final String password;
  final String confirmPassword;

  ResetPassRequestModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      ApiKey.email: email,
      ApiKey.password: password,
      ApiKey.confirmPassword: confirmPassword,
    };
  }
}

class ResetPassResponseModel {
  final String message;

  ResetPassResponseModel({required this.message});

  factory ResetPassResponseModel.fromJson(Map<String, dynamic> json) {
    return ResetPassResponseModel(
      message: json[ApiKey.message],
    );
  }
}
