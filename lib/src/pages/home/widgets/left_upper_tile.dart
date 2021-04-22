import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class LeftUpperTile extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: Get.width * 0.05),
      child: Text(
        controller.tilesData[2]['title'],
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: Get.width * 0.08,
        ),
      ),
    );
  }
}
