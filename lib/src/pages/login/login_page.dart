import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

import 'package:shop/src/pages/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Constants.deviceWidth * 0.1,
                vertical: Constants.deviceHeight * 0.1),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLoginText(),
                SizedBox(height: Constants.deviceHeight * 0.1),
                _buildForm(context),
                _buildLoginButton(),
                _buildSignUpRow(),
                _buildStorePhoto(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Login',
        style: TextStyle(fontSize: Constants.deviceWidth * 0.07),
      ),
    );
  }

  Widget _buildForm(context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          _buildEmailTextField(context),
          SizedBox(height: Constants.deviceHeight * 0.015),
          _buildPasswordTextField(context),
          SizedBox(height: Constants.deviceHeight * 0.05),
        ],
      ),
    );
  }

  Widget _buildEmailTextField(context) {
    return TextFormField(
      controller: controller.emailController,
      style: TextStyle(fontSize: Constants.deviceHeight * 0.018),
      decoration: InputDecoration(
        hintText: 'Email',
      ),
      focusNode: controller.emailFocusNode,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(controller.passwordFocusNode),
      textInputAction: TextInputAction.next,
      validator: controller.validateEmail,
    );
  }

  Widget _buildPasswordTextField(context) {
    return Obx(
      () => TextFormField(
        obscureText: controller.isPasswordHidden,
        controller: controller.passwordController,
        style: TextStyle(fontSize: Constants.deviceHeight * 0.018),
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              controller.isPasswordHidden
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: controller.isPasswordHidden
                  ? Colors.grey
                  : Theme.of(context).primaryColor,
            ),
            onPressed: () =>
                controller.isPasswordHidden = !controller.isPasswordHidden,
          ),
        ),
        validator: controller.validatePassword,
        focusNode: controller.passwordFocusNode,
        onFieldSubmitted: (_) => controller.login(),
      ),
    );
  }

  Widget _buildLoginButton() {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: Constants.deviceHeight * 0.06,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.lightBlue],
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(Constants.deviceWidth * 0.015))),
        child: Center(
            child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      onTap: controller.login,
    );
  }

  Widget _buildSignUpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ?',
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: controller.signUp,
          child: Text(
            'Sign up',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _buildStorePhoto() {
    return Image(
      image: AssetImage(
        'assets/images/store.png',
      ),
      height: Constants.deviceHeight * 0.3,
    );
  }
}
