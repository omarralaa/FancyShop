import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
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

  Future<void> login() async {
    if (!formKey.currentState.validate()) {
      return;
    }
    
    final authController = Get.find<AuthController>();
    try {
      await authController.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (err) {
      Get.snackbar('Failed Login', err.message);
    }
  }

  signUp() {}

  String validateEmail(String str) {
    return isEmail(str) ? null : 'Please enter a valid email';
  }

  String validatePassword(String password) {
    return password.length >= 6
        ? null
        : 'Passwords must be at least 6 chars long';
  }
}
