import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/core/values/colors.dart';
import 'package:shop/src/global_widgets/category_vertical_list/category_vertical_list.dart';
import 'package:shop/src/pages/shop/shop_controller.dart';
import 'package:shop/src/pages/shop/widgets/announcement_box.dart';

class ShopPage extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Categories',
            style: TextStyle(
              color: AppColors.lightBlack,
              fontWeight: FontWeight.w600,
              fontSize: Get.width * 0.046,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            labelColor: AppColors.lightBlack,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 5.0,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: Get.width * 0.041,
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Get.width * 0.041,
            ),
            onTap: controller.tabSelected,
            tabs: [
              Tab(text: 'Women'),
              Tab(text: 'Men'),
              Tab(text: 'Unisex'),
            ],
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.05,
        vertical: Get.height * 0.018,
      ),
      child: Column(
        children: [
          AnnouncementBox(
            title: controller.announcementBox['title'],
            description: controller.announcementBox['description'],
          ),
          SizedBox(height: Get.height * 0.01),
          Expanded(
            child: CategoryVerticalList(),
          ),
        ],
      ),
    );
  }
}
