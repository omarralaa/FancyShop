import 'package:get/get.dart';
import 'package:shop/src/data/repositories/auth/auth_repository.dart';
import 'package:shop/src/data/repositories/auth/auth_repository_interface.dart';
import 'package:shop/src/routes/app_routes.dart';

class AuthController extends GetxController {
  IAuthRepository _authRepository;

  AuthController() {
    _authRepository = Get.put(AuthRepository());
    ever(token, handleAuthStateChanged());
  }

  final _token = ''.obs;
  get token => this._token.value;
  _setToken(value) => _token.value = value;

  Future<void> signInWithEmailPassword(String email, String password) async {
    try {
      final authResponse =
          await _authRepository.signInWithEmailAndPassword(email, password);
      _setToken(authResponse.token);
    } catch (err) {}
  }

  handleAuthStateChanged() {
    if (_token.isEmpty) {
      Get.offAll(Routes.LOGIN);
    } else {
      Get.offAll(Routes.HOME);
    }
  }
}
