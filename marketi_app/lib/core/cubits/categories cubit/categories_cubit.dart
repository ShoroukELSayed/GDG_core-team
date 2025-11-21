import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/services/api_services.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final ApiServices apiServices;
  final List<CategoryModel> categories= [];

  CategoriesCubit(this.apiServices) : super(CategoriesInitial());
  Future<List<CategoryModel>> fetchAllCategories() async {
    emit(CategoriesLoading());
    try {
      final response = await apiServices.getAllCategories();
      emit(CategoriesSuccess(categories: response));
      categories.addAll(response);
    } on ServerException catch (e) {
      emit(CategoriesError(errMessage: e.errModel.message));
    }
    return [];
  }
  
}
