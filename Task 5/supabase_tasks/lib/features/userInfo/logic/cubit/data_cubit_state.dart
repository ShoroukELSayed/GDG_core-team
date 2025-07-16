part of 'data_cubit_cubit.dart';

@immutable
sealed class DataCubitState {}

final class DataCubitInitial extends DataCubitState {}
final class DataCubitLoading extends DataCubitState {}
final class DataCubitSuccess extends DataCubitState {
  final List<Map<String, dynamic>> data;
  DataCubitSuccess(this.data);
}
final class DataCubitError extends DataCubitState {
  final String error;
  DataCubitError(this.error);
} 
