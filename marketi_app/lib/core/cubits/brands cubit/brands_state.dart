part of 'brands_cubit.dart';

sealed class BrandsState {}

final class BrandsInitial extends BrandsState {}
class BrandsLoading extends BrandsState {}
class BrandsSuccess extends BrandsState {
  final List<BrandModel> brands;
  BrandsSuccess({required this.brands});
}
class BrandsError extends BrandsState {
  final String errMessage;
  BrandsError({required this.errMessage});
}