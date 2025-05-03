class ProductItemModel {
  final String productName;
  final String productPrice;
  final String productImage;
  final String productDiscount;
  final bool addToCart;

  ProductItemModel(
      {required this.productName,
      required this.productPrice,
      required this.productImage,
       this.productDiscount = '0%',
       this.addToCart = false});
}
