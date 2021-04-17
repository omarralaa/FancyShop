import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

import 'package:shop/src/pages/login/login_controller.dart';
import 'package:shop/src/pages/login/widgets/login_background.dart';
import 'package:shop/src/pages/login/widgets/login_button.dart';
import 'package:shop/src/pages/login/widgets/login_form.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          LoginBackground(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Constants.deviceWidth * 0.1,
              vertical: Constants.deviceHeight * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLoginText(),
                SizedBox(height: Constants.deviceHeight * 0.2),
                LoginForm(),
                SizedBox(height: Constants.deviceHeight * 0.012),
                LoginButton(),
                SizedBox(
                  height: Constants.deviceHeight * 0.01,
                ),
                _buildSignUpRow(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Welcome\nBack',
        style: TextStyle(
          fontSize: Constants.deviceWidth * 0.1,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSignUpRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ?',
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: controller.signUp,
          child: Text(
            'SIGN UP',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
