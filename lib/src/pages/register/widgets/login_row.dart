import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/register/register_controller.dart';

class LoginRow extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Already a registered user ?',
          style: TextStyle(color: Colors.white),
        ),
        TextButton(
          onPressed: controller.login,
          child: Text(
            'SIGN IN',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
