import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height * 0.067,
      child: Obx(
        () => ElevatedButton(
          onPressed: controller.isLoading ? null : controller.login,
          child: Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: Get.height * 0.02,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: AppColors.loginRed,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Get.width * 0.1),
            ),
          ),
        ),
      ),
    );
  }
}
