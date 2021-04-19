import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';
import 'package:shop/src/pages/register/register_controller.dart';

class SignUpButton extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height * 0.067,
      child: ElevatedButton(
        onPressed: controller.register,
        child: Text(
          'SIGN UP',
          style: TextStyle(
              fontSize: Get.height * 0.02,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Get.width * 0.1),
            ),
          ),
        ),
      ),
    );
  }
}
