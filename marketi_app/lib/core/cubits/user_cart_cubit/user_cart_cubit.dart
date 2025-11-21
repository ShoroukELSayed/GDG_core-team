import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/services/api_services.dart';

part 'user_cart_state.dart';

class UserCartCubit extends Cubit<UserCartState> {
  final ApiServices apiServices;
  UserCartCubit(this.apiServices) : super(UserCartInitial());

  final List<ProductModel> cartProducts = [];

  Future<void> getCartProducts() async {
    try {
      emit(UserCartLoading());
      final products = await apiServices.getCartProducts();
      cartProducts
        ..clear()
        ..addAll(products);
      emit(UserCartSuccess(products: List.from(cartProducts)));
    } on ServerException catch (e) {
      emit(UserCartError(message: e.errModel.message));
    }
  }

  Future<String> addProductToCart({required int productId}) async {
    try {
      final message = await apiServices.addProductToCart(productId: productId);
      final product = await apiServices.getProductById(productId: productId);
      cartProducts
        ..clear()
        ..add(product);
      emit(UserCartSuccess(products: List.from(cartProducts)));

      return message;
    } on ServerException catch (e) {
      emit(UserCartError(message: e.errModel.message));
      return '';
    }
  }

  Future<String> removeProductFromCart({required int productId}) async {
    try {
      final message =
          await apiServices.removeProductFromCart(productId: productId);
      cartProducts.removeWhere((p) => p.id == productId);
      emit(UserCartSuccess(products: List.from(cartProducts)));
      return message;
    } on ServerException catch (e) {
      emit(UserCartError(message: e.errModel.message));
      return '';
    }
  }
}
