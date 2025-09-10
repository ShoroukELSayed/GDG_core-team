class ProductCartItemModel {
  final int productId;
  final String productName;
  final String productPrice;
  final String productImage;
  final String productDescription;
  final String productRating;

  ProductCartItemModel({
    required this.productId,
    required this.productRating,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productDescription,
  });
}
