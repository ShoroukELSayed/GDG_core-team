class CategoryProductsItemModel {
  final int productId;
  final String productPrice;
  final String productRating;
  final String productName;
  final String productImage;
  final String productDescription;
  final String deliveryTime;

  CategoryProductsItemModel({
    required this.productRating,
    required this.productId,
    required this.productPrice,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.deliveryTime,
  });
}
