import 'package:get/get.dart';
import 'package:shop/src/pages/home/home_page.dart';
import 'package:shop/src/pages/login/login_page.dart';
import 'package:shop/src/pages/splash/splash_page.dart';
import 'package:shop/src/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
