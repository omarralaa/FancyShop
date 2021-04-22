import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';

class FavoriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: Get.width * 0.02,
      bottom: Get.height * 0.09,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: Get.width * 0.1,
              spreadRadius: Get.width * 0.01,
            ),
          ],
        ),
        child: ClipOval(
          child: Material(
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.red,
              child: SizedBox(
                width: Get.width * 0.09,
                height: Get.width * 0.09,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: AppColors.greyText,
                  size: Get.width * 0.035,
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}
