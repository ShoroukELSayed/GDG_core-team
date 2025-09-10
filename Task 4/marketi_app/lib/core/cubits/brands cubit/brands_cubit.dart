import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/services/api_services.dart';

part 'brands_state.dart';

class BrandsCubit extends Cubit<BrandsState> {
  final ApiServices apiServices;
  final List<BrandModel> allBrands = [];

  BrandsCubit(this.apiServices) : super(BrandsInitial());
  Future<void> fetchBrands() async {
  emit(BrandsLoading());
  try {
    final brands = await apiServices.getAllBrands();
    emit(BrandsSuccess(brands: brands));
    allBrands.addAll(brands);
  } on ServerException catch (e) {
    emit(BrandsError(errMessage: e.errModel.message));
  }
}

}
