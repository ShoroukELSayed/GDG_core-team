class ProductItemModel {
  final int productId;
  final String productName;
  final String productPrice;
  final String productImage;
  final String productDiscount;
  final double productRating;
  final bool addToCart;

  ProductItemModel(
      {required this.productId,
      required this.productName,
      required this.productPrice,
      required this.productImage,
      required this.productRating,
       this.productDiscount = '0%',
       this.addToCart = false});
}
