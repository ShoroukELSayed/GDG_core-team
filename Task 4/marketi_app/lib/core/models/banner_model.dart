class BannerModel {
  final String image;

  BannerModel({required this.image});

  factory BannerModel.fromJson(String path) {
    return BannerModel(
      image: "https://marketi-app.onrender.com$path",
    );
  }
}
