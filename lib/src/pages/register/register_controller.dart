import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop/src/routes/app_routes.dart';

class RegisterController extends GetxController {
// final MyRepository repository;
// RegisterController({@required this.repository}) : assert(repository != null);

//   final _obj = ''.obs;
//   set obj(value) => this._obj.value = value;
//   get obj => this._obj.value;
//
//
//
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final firstNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  void register() {
    if (!formKey.currentState.validate()) return;
    
  }

  login() {
    Get.offNamed(Routes.LOGIN);
  }
}
