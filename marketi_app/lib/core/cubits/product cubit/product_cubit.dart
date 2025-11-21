import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_states.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/services/api_services.dart';

class ProductCubit extends Cubit<ProductState> {
  final ApiServices apiServices;
  final List<ProductModel> allProducts = [];
  final List<ProductModel> searchedProducts = [];
  final List<ProductModel> productsByCategory = [];
  final List<ProductModel> productsByBrand = [];
  ProductCubit(this.apiServices) : super(ProductInitial());

  Future<void> fetchAllProducts() async {
    emit(ProductsLoading());
    try {
      final products = await apiServices.getAllProducts();
      emit(ProductsSuccess(products: products));
      allProducts
        ..clear()
        ..addAll(products);
    } on ServerException catch (e) {
      emit(ProductsError(errMessage: e.errModel.message));
    }
  }

  Future<void> fetchSearchedProducts({required String searchQuery}) async {
    try {
      emit(SearchLoading());
      final products =
          await apiServices.searchedProducts(searchQuery: searchQuery);
      emit(SearchSuccess(products: products));
      searchedProducts
        ..clear()
        ..addAll(products);
    } on ServerException catch (e) {
      emit(SearchError(errMessage: e.errModel.message));
    }
  }

  Future<void> getProductsByCategory({required String slug}) async {
    emit(ProductsLoading());
    try {
      final products = await apiServices.getProductsByCategory(slug: slug);
      emit(ProductsSuccess(products: products));
      productsByCategory
        ..clear()
        ..addAll(products);
    } on ServerException catch (e) {
      emit(ProductsError(errMessage: e.errModel.message));
    }
  }

  Future<void> getProductByBrand({required String brandName}) async {
    emit(ProductsLoading());
    try {
      final products =
          await apiServices.getProductsByBrand(brandName: brandName);
      emit(ProductsSuccess(products: products));
      productsByBrand
        ..clear()
        ..addAll(products);
    } on ServerException catch (e) {
      emit(ProductsError(errMessage: e.errModel.message));
    }
  }
}
