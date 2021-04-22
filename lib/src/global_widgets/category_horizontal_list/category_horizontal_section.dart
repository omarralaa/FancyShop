import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/data/models/category.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/category_list.dart';

class CategoryHorizontalSection extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryHorizontalSection(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Get.width * 0.05, right: Get.width * 0.04),
      child: Column(
        children: [
          _buildHeaderRow(),
          SizedBox(height: Get.height * 0.03),
          CategoryHorizontalList(),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTitlesColumn(),
        _buildViewAllLabel(),
      ],
    );
  }

  Widget _buildTitlesColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryModel.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Get.width * 0.09,
          ),
        ),
        SizedBox(
          height: Get.height * 0.007,
        ),
        Text(
          categoryModel.description,
          style: TextStyle(
            fontSize: Get.width * 0.031,
            color: AppColors.greyText,
          ),
        ),
      ],
    );
  }

  Widget _buildViewAllLabel() {
    return TextButton(
      child: Text(
        'View All',
        style: TextStyle(
          fontSize: Get.width * 0.029,
          color: AppColors.lightBlack,
          fontWeight: FontWeight.w400,
        ),
      ),
      onPressed: () {},
    );
  }
}
