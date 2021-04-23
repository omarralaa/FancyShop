import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/category_controller.dart';
import 'package:shop/src/global_widgets/category_vertical_list/horizontal_category_item/horizontal_category_item.dart';
import 'package:shop/src/pages/shop/shop_controller.dart';

class CategoryVerticalList extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(
      builder: (shopController) {
        final categories =
            controller.getCategoriesByGender(shopController.selectedGender);
        return controller.categories == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: categories.length,
                itemBuilder: (ctx, i) {
                  return HorizontalCategoryItem(categories[i]);
                },
              );
      },
    );
  }
}
