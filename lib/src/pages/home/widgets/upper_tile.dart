import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_controller.dart';

class UpperTile extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.45,
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.transparent, Colors.black45],
              ).createShader(
                Rect.fromLTRB(0, rect.height * 1.8, 0, 0),
              );
            },
            blendMode: BlendMode.darken,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(controller.tilesData[0]['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Get.height * 0.03,
            right: Get.width * 0.07,
            child: Text(
              controller.tilesData[0]['title'],
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
