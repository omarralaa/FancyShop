import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/category_controller.dart';
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
            Obx(() => _buildLists()),
            // ElevatedButton(
            //   onPressed: controller.logout,
            //   child: Text('logout'),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildLists() {
    final categoryController = Get.find<CategoryController>();
    return categoryController.homeListsCategories.length == 0
        ? CircularProgressIndicator()
        : Column(
            children: [
              CategoryHorizontalSection(
                  categoryController.homeListsCategories[0]),
              SizedBox(height: Get.height * 0.05),
              CategoryHorizontalSection(
                  categoryController.homeListsCategories[1]),
              SizedBox(height: Get.height * 0.05),
            ],
          );
  }
}
