class LoginResponse {
  final String token;
  final String message;
  final String name;

  LoginResponse({
    required this.token,
    required this.message,
    required this.name,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      message: json['message'],
      name: json['name'],
    );
  }
}
