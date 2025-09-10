import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/services/api_services.dart';

part 'user_favorite_state.dart';

class UserFavoriteCubit extends Cubit<UserFavoriteState> {
  final ApiServices apiServices;
  UserFavoriteCubit(this.apiServices) : super(UserFavoriteInitial());

  final List<ProductModel> favoriteProducts = [];

  Future<void> getFavoriteProducts() async {
    try {
      emit(UserFavoriteLoading());
      final products = await apiServices.getFavoriteProducts();
      favoriteProducts
        ..clear()
        ..addAll(products);
      emit(UserFavoriteSuccess(products: List.from(favoriteProducts)));
    } on ServerException catch (e) {
      emit(UserFavoriteError(message: e.errModel.message));
    }
  }

  Future<String> addProductToFavorite({required int productId}) async {
    try {
      final message =
          await apiServices.addProductToFavorite(productId: productId);
      final product = await apiServices.getProductById(productId: productId);
      if (!favoriteProducts.any((p) => p.id == productId)) {
        favoriteProducts.add(product);
      }
      emit(UserFavoriteSuccess(products: List.from(favoriteProducts)));
      return message;
    } on ServerException catch (e) {
      emit(UserFavoriteError(message: e.errModel.message));
    }
    return '';
  }

  Future<String> removeProductFromFavorite({required int productId}) async {
    try {
      final message =
          await apiServices.removeProductFromFavorite(productId: productId);

      favoriteProducts.removeWhere((p) => p.id == productId);
      emit(UserFavoriteSuccess(products: List.from(favoriteProducts)));
      return message;
    } on ServerException catch (e) {
      emit(UserFavoriteError(message: e.errModel.message));
    }
    return '';
  }
}
