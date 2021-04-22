import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/category_horizontal_section.dart';
import 'package:shop/src/pages/home/widgets/tiles_grid.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TilesGrid(),
            SizedBox(height: Get.height * 0.03),
            CategoryHorizontalSection(controller.firstCategory),
            SizedBox(height: Get.height * 0.05),
            CategoryHorizontalSection(controller.secondCategory),
            SizedBox(height: Get.height * 0.05),
            // Text('HomeController'),
            // ElevatedButton(
            //   onPressed: controller.logout,
            //   child: Text('logout'),
            // ),
          ],
        ),
      ),
    );
  }
}
