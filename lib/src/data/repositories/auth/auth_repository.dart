import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop/src/data/models/auth_response.dart';
import 'package:shop/src/data/provider/firebase_auth_api.dart';
import 'package:shop/src/data/provider/shop_api.dart';
import 'package:shop/src/data/repositories/auth/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  Dio _httpService;

  AuthRepository() {
    //ShopApiClient apiClient = Get.put(ShopApiClient());
    //apiClient.init();
    FirebaseAuthApiClient apiClient = Get.put(FirebaseAuthApiClient());
    apiClient.init();
    _httpService = apiClient.httpClient;
  }

  @override
  Future<AuthResponseModel> signInWithEmailAndPassword(
      String email, String password) async {
    var body = {'email': email, 'password': password};
    try {
      final response =
          await _httpService.post(':signInWithPassword', data: body);

      return AuthResponseModel(token: response.data['idToken']);
    } on DioError catch (e) {
      throw (e);
    }
  }

  @override
  Future<AuthResponseModel> signUp(Map<String, String> user) async {
    var body = {
      'email': user['email'],
      'password': user['password'],
    };
    
    try {
      final response = await _httpService.post(':signUp', data: body);

      return AuthResponseModel(token: response.data['idToken']);
    } on DioError catch (e) {
      throw (e);
    }
  }
}
