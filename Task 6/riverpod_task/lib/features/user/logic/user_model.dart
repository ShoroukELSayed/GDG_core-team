class UserModel {
  final String name;
  final String userName;
  final String userEmail;

  UserModel({
    required this.name,
    required this.userName,
    required this.userEmail,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      userName: json['username'],
      userEmail: json['email'],
    );
  }
}
