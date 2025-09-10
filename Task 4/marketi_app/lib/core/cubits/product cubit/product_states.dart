import 'package:marketi_app/core/models/product_model.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductsLoading extends ProductState {}

class ProductsSuccess extends ProductState {
  final List<ProductModel> products;
  ProductsSuccess({required this.products});
}

class ProductsError extends ProductState {
  final String errMessage;
  ProductsError({required this.errMessage});
}
class SearchLoading extends ProductState {}

class SearchSuccess extends ProductState {
  final List<ProductModel> products;
  SearchSuccess({required this.products});
}

class SearchError extends ProductState {
  final String errMessage;
  SearchError({required this.errMessage});
}
