part of 'user_favorite_cubit.dart';

sealed class UserFavoriteState {}

final class UserFavoriteInitial extends UserFavoriteState {}
final class UserFavoriteLoading extends UserFavoriteState {}
final class UserFavoriteSuccess extends UserFavoriteState {
  final List<ProductModel> products;
  UserFavoriteSuccess({required this.products});
}
final class UserFavoriteError extends UserFavoriteState {
  final String message;
  UserFavoriteError({required this.message});
}
