class JuiceModel {
  final String name;
  final String image;

  JuiceModel({
    required this.name,
    required this.image,
  });
  factory JuiceModel.fromJson(Map<String, dynamic> json) {
    return JuiceModel(
      name: json['tags'],
      image: json['webformatURL'],
    );
  }
}