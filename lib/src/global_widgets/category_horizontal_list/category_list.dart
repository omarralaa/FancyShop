import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/vertical_category_item/vertical_category_item.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class CategoryHorizontalList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.35,
      child: ListView.builder(
        itemCount: controller.firstCategory.categoryItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) {
          return VerticalCategoryItem(controller.firstCategory.categoryItems[i]);
        },
      ),
    );
  }
}
