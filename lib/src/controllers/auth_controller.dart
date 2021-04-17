import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import 'package:shop/src/data/models/auth_response.dart';
import 'package:shop/src/data/repositories/auth/auth_repository.dart';
import 'package:shop/src/data/repositories/auth/auth_repository_interface.dart';
import 'package:shop/src/routes/app_routes.dart';

class AuthController extends GetxController {
  IAuthRepository _authRepository;
  final storage = FlutterSecureStorage();

  final _token = ''.obs;
  get token => this._token.value;
  _setToken(value) => _token.value = value;

  AuthController() {
    _authRepository = Get.put(AuthRepository());
    ever(_token, _handleAuthStateChanged);
  }

  @override
  void onInit() {
    super.onInit();

    tryAutoLogin();
  }

  // Sign in user using the email and password
  Future<void> signInWithEmailPassword(String email, String password) async {
    try {
      final authResponse =
          await _authRepository.signInWithEmailAndPassword(email, password);
      _authenticate(authResponse);
    } catch (err) {}
  }

  Future<void> logout() async {
    _setToken('');
    await storage.delete(key: 'token');
  }

  // Tries auto login by checking if token is saved
  Future tryAutoLogin() async {
    String value = await storage.read(key: 'token');
    if (value != null) {
      _setToken(token);
    }
    _setToken('');
  }

  // Navigate user to screen on auth changing
  _handleAuthStateChanged(val) {
    if (val.isEmpty) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }

  // Authetnicates user and saves token for auto login
  Future<void> _authenticate(AuthResponseModel authResponse) async {
    _setToken(authResponse.token);
    await storage.write(key: 'token', value: token);
  }
}
