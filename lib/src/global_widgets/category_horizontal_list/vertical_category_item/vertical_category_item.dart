import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/data/models/category_item.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/vertical_category_item/fav_button.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/vertical_category_item/vertical_category_item_details.dart';

class VerticalCategoryItem extends StatelessWidget {
  final CategoryItemModel categoryItem;

  const VerticalCategoryItem(this.categoryItem);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width * 0.36,
          height: Get.height * 0.35,
          margin: EdgeInsets.symmetric(
            horizontal: Get.width * 0.02,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Get.width * 0.03),
              topRight: Radius.circular(Get.width * 0.03),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPhoto(),
              SizedBox(height: Get.height * 0.005),
              VerticalCategoryItemDetails(categoryItem: categoryItem),
            ],
          ),
        ),
        FavoriteButton(),
        if (categoryItem.discount > 0) _buildDiscountIcon(),
      ],
    );
  }

  Widget _buildPhoto() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Get.width * 0.03),
      child: Image.network(
        categoryItem.imageUrl,
        width: double.infinity,
        height: Get.height * 0.24,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildDiscountIcon() {
    return Positioned(
      left: Get.width * 0.05,
      top: Get.height * 0.015,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.005,
          horizontal: Get.width * 0.02,
        ),
        decoration: BoxDecoration(
          color: AppColors.extrasRed,
          borderRadius: BorderRadius.all(Radius.circular(Get.width * 0.1)),
        ),
        child: Text(
          '-${categoryItem.discount}%',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: Get.width * 0.03,
          ),
        ),
      ),
    );
  }
}
