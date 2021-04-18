import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

import 'package:shop/src/pages/register/register_controller.dart';
import 'package:shop/src/pages/register/widgets/login_row.dart';
import 'package:shop/src/pages/register/widgets/register_background.dart';
import 'package:shop/src/pages/register/widgets/register_form.dart';
import 'package:shop/src/pages/register/widgets/signup_button.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          RegisterBackground(),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.only(
        left: Constants.deviceWidth * 0.1,
        right: Constants.deviceWidth * 0.1,
        top: Constants.deviceHeight * 0.18,
      ),
      child: Column(
        children: [
          _buildCurrentAccountLabel(),
          SizedBox(height: Constants.deviceHeight * 0.02),
          RegisterForm(),
          SizedBox(height: Constants.deviceHeight * 0.05),
          SignUpButton(),
          LoginRow(),
        ],
      ),
    );
  }

  Widget _buildCurrentAccountLabel() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Create\nAccount',
        style: TextStyle(
          fontSize: Constants.deviceWidth * 0.1,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
