import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('LoginPage')),

    body: SafeArea(
      child: Text('LoginController'))
    );
  }
}