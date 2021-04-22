import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class LeftLowerTile extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(controller.tilesData[3]['image']),
                  fit: BoxFit.fill,
                ),
              ),
              padding: EdgeInsets.only(
                  left: Get.width * 0.03, bottom: Get.height * 0.03),
            ),
          ),
          Positioned(
            bottom: Get.height * 0.02,
            left: Get.width * 0.02,
            child: Text(
              controller.tilesData[3]['title'],
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.width * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
