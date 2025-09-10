part of 'user_cart_cubit.dart';

sealed class UserCartState {}

final class UserCartInitial extends UserCartState {}

final class UserCartLoading extends UserCartState {}

final class UserCartSuccess extends UserCartState {
  final List<ProductModel> products;
  UserCartSuccess({required this.products});
}

final class UserCartError extends UserCartState {
  final String message;
  UserCartError({required this.message});
}
