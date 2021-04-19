import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/constants.dart';

class RegisterBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          _buildUpperLeftEllipse(context),
          _buildLowerEllipse(context),
        ],
      ),
    );
  }

  Widget _buildUpperLeftEllipse(context) {
    return Positioned(
      left: -Get.width * 0.5,
      top: -Get.height * 0.23,
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
