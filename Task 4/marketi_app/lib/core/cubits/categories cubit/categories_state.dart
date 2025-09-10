part of 'categories_cubit.dart';

sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}
class CategoriesLoading extends CategoriesState {}
class CategoriesSuccess extends CategoriesState {
  final List<CategoryModel> categories;
  CategoriesSuccess({required this.categories});
}
class CategoriesError extends CategoriesState {
  final String errMessage;
  CategoriesError({required this.errMessage});
}