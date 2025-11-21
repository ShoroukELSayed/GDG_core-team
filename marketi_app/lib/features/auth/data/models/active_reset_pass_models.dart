import 'package:marketi_app/core/api/end_points.dart';

class ActiveResetPassRequest{
  final String email;
  final String code;

  ActiveResetPassRequest({required this.email, required this.code});

  Map<String, dynamic> toJson() {
    return {
      ApiKey.email: email,
      ApiKey.code: code,
    };
  }
}

class ActiveResetPassResponse {
  final String message;

  ActiveResetPassResponse({required this.message});

  factory ActiveResetPassResponse.fromJson(Map<String, dynamic> json) {
    return ActiveResetPassResponse(
      message: json[ApiKey.message],
    );
  }
}
