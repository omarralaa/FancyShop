import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/data/models/category_item.dart';
import 'package:shop/src/global_widgets/category_horizontal_list/vertical_category_item/rating_bar.dart';

class VerticalCategoryItemDetails extends StatelessWidget {
  final CategoryItemModel categoryItem;

  VerticalCategoryItemDetails({this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalCategoryItemRatingBar(
          rating: categoryItem.rating,
          numberOfRatings: categoryItem.numberOfRatings,
        ),
        SizedBox(height: Get.height * 0.006),
        _buildStoreLabel(),
        SizedBox(height: Get.height * 0.005),
        _buildNameLabel(),
        SizedBox(height: Get.height * 0.003),
        _buildDiscountRow(),
      ],
    );
  }

  Widget _buildStoreLabel() {
    return Text(
      categoryItem.store,
      style: TextStyle(
        color: AppColors.greyText,
        fontSize: Get.width * 0.031,
      ),
    );
  }

  Widget _buildNameLabel() {
    return Text(
      categoryItem.name,
      style: TextStyle(
        fontSize: Get.width * 0.045,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildDiscountRow() {
    final priceAfterDiscount =
        ((100 - categoryItem.discount) / 100 * categoryItem.price).toString();
    return Row(
      children: [
        Text(
          categoryItem.price.toString() + '\$',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: AppColors.greyText,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: Get.width * 0.012),
        Text(
          priceAfterDiscount + '\$',
          style: TextStyle(
            color: AppColors.extrasRed,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
