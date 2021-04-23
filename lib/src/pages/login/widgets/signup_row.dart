import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/pages/login/login_controller.dart';

class SignUpRow extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
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
              color: AppColors.loginRed,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
