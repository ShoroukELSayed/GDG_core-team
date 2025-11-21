import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_state.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/core/models/edit_user_data.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/models/user_model.dart';


class UserPortfolioCubit extends Cubit<UserStates> {
  final ApiServices apiServices;
  UserPortfolioCubit(this.apiServices) : super(UserInitial());
  XFile profilePic = XFile(Assets.assetsImagesAvatar);
  UserModel? user;
  uploadProfilePic({required XFile image}) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  Future<void> updateProfilePicToApi() async {
    try {
      await apiServices.uploadImageToApi(profilePic);
      emit(UploadProfilePic());
    } on ServerException catch (e) {
      emit(UploadProfilePicErorr(message: e.errModel.message));
    }
  }

  Future<void> getUserData() async {
    try {
      emit(GetDataLoading());
      final response = await apiServices.getUserProfile();
      emit(GetDataSuccess(user: response));
      user = response;
    } on ServerException catch (e) {
      emit(GetDataError(message: e.errModel.message));
    }
  }

  Future<void> updateUserData({required EditUserData editUserData}) async {
    try {
      emit(UpdateDataLoading());
      final response = await apiServices.editUserData(editUserData: editUserData);
      emit(UpdateDataSuccess(message:response));
    } on ServerException catch (e) {
      emit(UpdateDataError(message: e.errModel.message));
    }
  }
}
