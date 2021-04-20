import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('HomeController'),
            ElevatedButton(
              onPressed: controller.logout,
              child: Text('logout'),
            )
          ],
        ),
      ),
    );
  }
}
