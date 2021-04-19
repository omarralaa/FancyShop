import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/utils/validators.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/core/values/constants.dart';

import '../login_controller.dart';

class LoginForm extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          _buildEmailTextField(context),
          SizedBox(height: Get.height * 0.03),
          _buildPasswordTextField(context),
          SizedBox(height: Get.height * 0.01),
          _buildForgetPasswordButton(context),
        ],
      ),
    );
  }

  Widget _buildEmailTextField(context) {
    return TextFormField(
      controller: controller.emailController,
      style: TextStyle(
        fontSize: Get.height * 0.018,
        color: Theme.of(context).primaryColor,
      ),
      decoration: InputDecoration(
        hintText: 'Email',
      ),
      focusNode: controller.emailFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(controller.passwordFocusNode),
      textInputAction: TextInputAction.next,
      validator: Validations.validateEmail,
    );
  }

  Widget _buildPasswordTextField(context) {
    return Obx(
      () => TextFormField(
        obscureText: controller.isPasswordHidden,
        controller: controller.passwordController,
        style: TextStyle(
          fontSize: Get.height * 0.018,
          color: Theme.of(context).primaryColor,
        ),
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              controller.isPasswordHidden
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: controller.isPasswordHidden
                  ? AppColors.hintColor
                  : Theme.of(context).primaryColor,
            ),
            onPressed: () =>
                controller.isPasswordHidden = !controller.isPasswordHidden,
          ),
        ),
        validator: Validations.validatePassword,
        focusNode: controller.passwordFocusNode,
        onFieldSubmitted: (_) => controller.login(),
      ),
    );
  }

  Widget _buildForgetPasswordButton(context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: controller.forgetPassword,
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: const Color(0xff8C7C8A),
          ),
        ),
      ),
    );
  }
}
