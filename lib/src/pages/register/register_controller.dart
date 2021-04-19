import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/core/utils/errors.dart';
import 'package:shop/src/core/utils/validators.dart';
import 'package:shop/src/routes/app_routes.dart';

class RegisterController extends GetxController {


  final _isLoading = false.obs;
  set isLoading(value) => _isLoading.value = value;
  get isLoading => _isLoading.value;

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final firstNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  Future<void> register() async {
    if (!formKey.currentState.validate()) return;

    Map<String, String> user = {
      'email': emailController.text,
      'password': passwordController.text
    };

    isLoading = true;
    final authController = Get.find<AuthController>();

    try {
      await authController.signUpWithEmailPassword(user);
    } catch (err) {
      final msg = Errors.registerError(
          err.response.data['error']['message'].toString());

      Get.snackbar(
        'Failed Register',
        msg,
        backgroundColor: Colors.white,
        overlayColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    isLoading = false;
  }

  login() {
    Get.offNamed(Routes.LOGIN);
  }

  String validateConfirmPassword(String confirmPassword) {
    return Validations.validateConfirmPassword(
        confirmPassword, passwordController.text);
  }
}
