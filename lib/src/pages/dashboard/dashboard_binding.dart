import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    //Get.put<HomeController>(HomeController());
  }
}
