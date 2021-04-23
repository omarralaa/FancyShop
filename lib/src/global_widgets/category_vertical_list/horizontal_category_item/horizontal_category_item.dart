import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/data/models/category_item.dart';

class HorizontalCategoryItem extends StatelessWidget {
  final CategoryModel category;

  HorizontalCategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: Get.height * 0.12,
        margin: EdgeInsets.symmetric(vertical: Get.height * 0.01),
        padding: EdgeInsets.only(left: Get.width * 0.055),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Get.width * 0.03),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildText(),
            _buildPhoto(),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      category.name,
      style: TextStyle(
        fontSize: Get.width * 0.045,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildPhoto() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(Get.width * 0.03),
        bottomRight: Radius.circular(Get.width * 0.03),
      ),
      child: Image.network(
        category.imageUrl,
        width: Get.width * 0.48,
        fit: BoxFit.cover,
      ),
    );
  }
}
