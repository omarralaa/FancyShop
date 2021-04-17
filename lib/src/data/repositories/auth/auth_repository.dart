import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop/src/data/models/auth_response.dart';
import 'package:shop/src/data/provider/shop_api.dart';
import 'package:shop/src/data/repositories/auth/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  Dio _httpService;

  AuthRepository() {
    ShopApiClient apiClient = Get.put(ShopApiClient());
    apiClient.init();
    _httpService = apiClient.httpClient;
  }

  @override
  Future<AuthResponseModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      //final response = await _httpService.post('/auth', data: {});

      return AuthResponseModel(
        token: 'JKHASKJFH2193012031JSADDH',
      );
    } on DioError catch (e) {}
    return null;
  }

  @override
  Future<AuthResponseModel> signUp(Map<String, String> user) async {
    try {
      //final response await _httpService.post('/auth', data: {});
      return AuthResponseModel(
        token: 'JKHASKJFH2193012031JSADDH',
      );
    } on DioError catch (e) {}
    return null;
  }
}
