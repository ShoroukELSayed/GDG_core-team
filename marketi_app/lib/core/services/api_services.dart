import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketi_app/core/api/api_consumer.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/models/edit_user_data.dart';
import 'package:marketi_app/core/models/product_filter_request_model.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/features/auth/data/models/active_reset_pass_models.dart';
import 'package:marketi_app/features/auth/data/models/forgot_pass_models.dart';
import 'package:marketi_app/features/auth/data/models/login_models.dart';
import 'package:marketi_app/features/auth/data/models/sign_up_models.dart';
import 'package:marketi_app/features/auth/data/models/reset_pass_request.dart';
import 'package:marketi_app/core/models/user_model.dart';

class ApiServices {
  final ApiConsumer api;
  ApiServices(this.api);
  final String baseUrl = EndPoint.baseUrl;
  Future<SignUpResponseModel> signUpUser(SignUpRequestModel signUpModel) async {
    final response = await api.post(
      EndPoint.signUp,
      data: signUpModel.toJson(),
    );
    final signUpResponse = SignUpResponseModel.fromJson(response);
    return signUpResponse;
  }

  Future<LoginResponseModel> loginUser(LoginRequestModel loginModel) async {
    final response = await api.post(
      EndPoint.signIn,
      data: loginModel.toJson(),
    );
    final loginResponse = LoginResponseModel.fromJson(response);
    return loginResponse;
  }

  Future<ForgotPassResponse> forgotPassword(
      ForgotPassRequest forgotPassRequest) async {
    final response = await api.post(
      EndPoint.forgotPassword,
      data: forgotPassRequest.toJson(),
    );
    final forgotPassResponse = ForgotPassResponse.fromJson(response);
    return forgotPassResponse;
  }

  Future<ActiveResetPassResponse> activeResetPass(
      ActiveResetPassRequest activeResetPassRequest) async {
    final response = await api.post(
      EndPoint.activeResetPass,
      data: activeResetPassRequest.toJson(),
    );
    final activeResetPassResponse = ActiveResetPassResponse.fromJson(response);
    return activeResetPassResponse;
  }

  Future<ResetPassResponseModel> resetPassword(
      ResetPassRequestModel resetPassRequest) async {
    final response = await api.post(
      EndPoint.resetPassword,
      data: resetPassRequest.toJson(),
    );
    final resetPassResponse = ResetPassResponseModel.fromJson(response);
    return resetPassResponse;
  }

  Future<List<CategoryModel>> getAllCategories() async {
    final response = await api.get(EndPoint.allCategories);
    final List<dynamic> data = response['list'] as List<dynamic>;
    final categories = data
        .map((item) => CategoryModel.fromJson(item as Map<String, dynamic>))
        .toList();

    return categories;
  }

  Future<List<ProductModel>> getProductsByCategory(
      {required String slug}) async {
    final response =
        await api.get('https://dummyjson.com/products/category/$slug');
    final data = response as Map<String, dynamic>;
    final products = data['products'] as List;
    return products.map((item) => ProductModel.fromJson(item)).toList();
  }

  Future<List<BrandModel>> getAllBrands() async {
    final response = await api.get(EndPoint.brands);
    final List<dynamic> data = response['list'] as List<dynamic>;
    final brands = data.map((item) => BrandModel.fromJson(item)).toList();

    return brands;
  }

  Future<List<ProductModel>> getProductsByBrand(
      {required String brandName}) async {
    final response = await api.get('${EndPoint.getProductByBrand}/$brandName');
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<List<ProductModel>> getAllProducts() async {
    final response = await api.get(EndPoint.allProducts);
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<List<ProductModel>> filterProducts(
      {required ProductFilterRequestModel productFilterRequestModel}) async {
    final response = await api.post(
      EndPoint.productsFilter,
      data: productFilterRequestModel.toJson(),
    );
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<List<ProductModel>> searchedProducts(
      {required String searchQuery}) async {
    final response = await api.post(
      EndPoint.productsFilter,
      data: {
        "search": searchQuery,
        "skip": 0,
        "limit": 10,
      },
    );
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<List<ProductModel>> getCartProducts() async {
    final response = await api.get(EndPoint.getCart);
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<String> addProductToCart({required int productId}) async {
    final response =
        await api.post(EndPoint.addCart, data: {"productId": productId});
    return response['message'];
  }

  Future<String> removeProductFromCart({required int productId}) async {
    final response =
        await api.delete(EndPoint.deleteCart, data: {"productId": productId});
    return response['message'];
  }

  Future<List<ProductModel>> getFavoriteProducts() async {
    final response = await api.get(EndPoint.getFavorite);
    final data = response['list'] as List;
    final products = data.map((item) => ProductModel.fromJson(item)).toList();
    return products;
  }

  Future<String> addProductToFavorite({required int productId}) async {
    final response =
        await api.post(EndPoint.addCart, data: {"productId": productId});
    return response['message'];
  }

  Future<String> removeProductFromFavorite({required int productId}) async {
    final response =
        await api.delete(EndPoint.deleteCart, data: {"productId": productId});
    return response['message'];
  }

  Future<ProductModel> getProductById({required int productId}) async {
    final response = await api.get('${EndPoint.getProductById}/$productId');
    return ProductModel.fromJson(response);
  }

  Future<void> uploadImageToApi(XFile image) async {
    await api.post(
      EndPoint.uploadImage,
      isFromData: true,
      data:{
        'file':MultipartFile.fromFile(image.path,
          filename: image.path.split('/').last),
      },
    );
  }

  Future<UserModel> getUserProfile() async {
    final response = await api.get(EndPoint.getUserData);
    return UserModel.fromJson(response[ApiKey.message]);
  }

  Future<String> editUserData({required EditUserData editUserData}) async {
    final response = await api.post(
      EndPoint.editUserData,
      data: editUserData.toJson(),
    );
    return response[ApiKey.message];
  }
}
