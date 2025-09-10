import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/models/user_model.dart';

class LoginRequestModel {
  final String email;
  final String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    return {
      ApiKey.email: email,
      ApiKey.password: password,
    };
  }
}

class LoginResponseModel {
  final String token;
  final String message;
  final UserModel user;

  LoginResponseModel({required this.user, 
    required this.token,
    required this.message,
    
  });
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json[ApiKey.token],
      message: json[ApiKey.message],
      user: UserModel.fromJson(json[ApiKey.user]),
    );
  }
}
