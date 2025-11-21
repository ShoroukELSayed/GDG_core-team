import 'package:marketi_app/core/api/end_points.dart';

class EditUserData {
  final String? name;
  final String? image;
  final String? phone;
  final String? address;

  EditUserData({this.name, this.image, this.phone, this.address});

  Map<String, dynamic> toJson() => {
        ApiKey.name: name,
        ApiKey.email: image,
        ApiKey.phone: phone,
        ApiKey.address: address
      };
}
