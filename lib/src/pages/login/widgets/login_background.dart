import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

class LoginBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildUpperRightEllipse(context),
        _buildUpperLeftEllipse(context),
        _buildLowerEllipse(context),
      ],
    );
  }

  Widget _buildUpperLeftEllipse(context) {
    return Positioned(
      left: -Get.width * 0.16,
      top: -Get.height * 0.1,
      child: Container(
        height: Get.height * 0.4,
        width: Get.width * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              Get.width * 0.75,
              Get.width * 0.6,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUpperRightEllipse(context) {
    return Positioned(
      right: -Get.width * 0.16,
      top: -Get.height * 0.1,
      child: Container(
        height: Get.height * 0.45,
        width: Get.width * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              Get.width * 0.75,
              Get.width * 0.6,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLowerEllipse(context) {
    return Positioned(
      bottom: -Get.height * 0.31,
      left: -Get.width * 0.1,
      child: Container(
        height: Get.height * 0.4,
        width: Get.width * 1.2,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(
            Radius.elliptical(
              Get.width * 1,
              Get.width * 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
