import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/dashboard/widgets/bottom_navbar_item.dart';
import 'package:shop/src/pages/home/home_page.dart';
import 'package:shop/src/pages/profile/profile_page.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              buildBottomNavigationBarItem(
                index: 0,
                selectedIndex: controller.tabIndex,
                label: 'Home',
                selectedIcon: Icons.home,
                unselectedIcon: Icons.home_outlined,
              ),
              buildBottomNavigationBarItem(
                index: 1,
                selectedIndex: controller.tabIndex,
                label: 'Profile',
                selectedIcon: Icons.person,
                unselectedIcon: Icons.person_outline,
              ),
            ],
          ),
        );
      },
    );
  }
}
