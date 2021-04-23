import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/shop/shop_controller.dart';

class AnnouncementBox extends GetView<ShopController> {
  final String title;
  final String description;

  const AnnouncementBox({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.announcemntBoxClicked,
      splashColor: Colors.amber,
      child: Container(
        width: double.infinity,
        height: Get.height * 0.12,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(Get.width * 0.02),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.width * 0.07,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Get.height * 0.004),
            Text(
              description,
              style: TextStyle(
                color: Colors.white,
                fontSize: Get.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
