import 'package:marketi_app/core/api/end_points.dart';

class ForgotPassRequest {
  final String email;

  ForgotPassRequest({required this.email});

  Map<String, dynamic> toJson() {
    return {
      ApiKey.email: email,
    };
  }
}

class ForgotPassResponse {
  final String message;

  ForgotPassResponse({required this.message});

  factory ForgotPassResponse.fromJson(Map<String, dynamic> json) {
    return ForgotPassResponse(
      message: json[ApiKey.message],
    );
  }
}