import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class RightTile extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.5,
      height: Get.height * 0.4,
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.darken),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(controller.tilesData[1]['image']),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.only(left: Get.width * 0.1),
              // child: Text(
              //   controller.tilesData[1]['title'],
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: Get.width * 0.1,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height * 0.15, left: Get.width * 0.09),
            child: Text(
              controller.tilesData[1]['title'],
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.width * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
