import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class VerticalCategoryItemRatingBar extends StatelessWidget {
  final double rating;
  final int numberOfRatings;

  const VerticalCategoryItemRatingBar({this.rating, this.numberOfRatings});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          itemSize: Get.width * 0.04,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: null,
        ),
        SizedBox(width: Get.width * 0.01),
        Text(
          '($numberOfRatings)',
          style: TextStyle(
            color: AppColors.greyText,
            fontSize: Get.width * 0.027,
          ),
        ),
      ],
    );
  }
}
