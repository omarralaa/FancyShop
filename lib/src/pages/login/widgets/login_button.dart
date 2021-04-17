import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Constants.deviceHeight * 0.067,
      child: ElevatedButton(
        onPressed: controller.login,
        child: Text(
          'SIGN IN',
          style: TextStyle(
            fontSize: Constants.deviceHeight * 0.02,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.deviceWidth * 0.1),
              side: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
