import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/core/utils/errors.dart';
import 'package:shop/src/routes/app_routes.dart';
import 'package:validators/validators.dart';

class LoginController extends GetxController {
// final MyRepository repository;
// LoginController({@required this.repository}) : assert(repository != null);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  final _isPasswordHidden = true.obs;
  set isPasswordHidden(value) => _isPasswordHidden.value = value;
  bool get isPasswordHidden => _isPasswordHidden.value;

  final _isLoading = false.obs;
  set isLoading(value) => _isLoading.value = value;
  bool get isLoading => _isLoading.value;

  Future<void> login() async {
    if (!formKey.currentState.validate()) return;
    _isLoading.value = true;

    final authController = Get.find<AuthController>();
    try {
      await authController.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (err) {
      final msg =
          Errors.loginError(err.response.data['error']['message'].toString());
      Get.snackbar(
        'Failed Login',
        msg,
        backgroundColor: Colors.white,
        overlayColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );

      passwordController.text = '';
    }
    _isLoading.value = false;
  }

  void signUp() {
    Get.offNamed(Routes.REGISTER);
  }

  void forgetPassword() {}

  void back() {
    Get.back();
  }
}
