import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/utils/validators.dart';
import 'package:shop/src/core/values/constants.dart';

import '../register_controller.dart';

class RegisterForm extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          _buildNameTextField(context),
          SizedBox(height: Get.height * 0.02),
          _buildEmailTextField(context),
          SizedBox(height: Get.height * 0.02),
          _buildPasswordTextField(context),
          SizedBox(height: Get.height * 0.02),
          _buildConfirmPasswordTextField(context),
        ],
      ),
    );
  }

  Widget _buildNameTextField(context) {
    return TextFormField(
      controller: controller.nameController,
      style: TextStyle(
        fontSize: Get.height * 0.018,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Name',
        errorStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
      ),
      focusNode: controller.firstNameFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(controller.emailFocusNode),
      textInputAction: TextInputAction.next,
      validator: Validations.validateName,
      cursorColor: Colors.white,
    );
  }

  Widget _buildEmailTextField(context) {
    return TextFormField(
      controller: controller.emailController,
      style: TextStyle(
        fontSize: Get.height * 0.018,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Email',
        errorStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
      ),
      focusNode: controller.emailFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(controller.passwordFocusNode),
      textInputAction: TextInputAction.next,
      validator: Validations.validateEmail,
      cursorColor: Colors.white,
    );
  }

  Widget _buildPasswordTextField(context) {
    return TextFormField(
      obscureText: true,
      controller: controller.passwordController,
      style: TextStyle(
        fontSize: Get.height * 0.018,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white),
        errorStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
      ),
      focusNode: controller.passwordFocusNode,
      onFieldSubmitted: (_) => FocusScope.of(context)
          .requestFocus(controller.confirmPasswordFocusNode),
      textInputAction: TextInputAction.next,
      validator: Validations.validatePassword,
      cursorColor: Colors.white,
    );
  }

  Widget _buildConfirmPasswordTextField(context) {
    return TextFormField(
      obscureText: true,
      controller: controller.confirmPasswordController,
      style: TextStyle(
        fontSize: Get.height * 0.018,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        hintStyle: TextStyle(color: Colors.white),
        errorStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.4),
        ),
      ),
      focusNode: controller.confirmPasswordFocusNode,
      onFieldSubmitted: (_) => controller.register(),
      textInputAction: TextInputAction.done,
      validator: controller.validateConfirmPassword,
      cursorColor: Colors.white,
    );
  }
}
