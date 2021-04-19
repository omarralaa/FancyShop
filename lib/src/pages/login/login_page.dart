import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

import 'package:shop/src/pages/login/login_controller.dart';
import 'package:shop/src/pages/login/widgets/login_background.dart';
import 'package:shop/src/pages/login/widgets/login_button.dart';
import 'package:shop/src/pages/login/widgets/login_form.dart';
import 'package:shop/src/pages/login/widgets/signup_row.dart';

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
              horizontal: Get.width * 0.1,
              vertical: Get.height * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLoginText(),
                SizedBox(height: Get.height * 0.2),
                LoginForm(),
                SizedBox(height: Get.height * 0.012),
                LoginButton(),
                SizedBox(height: Get.height * 0.01),
                SignUpRow(),
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
          fontSize: Get.width * 0.1,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
