import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/pages/home/home_binding.dart';
import 'package:shop/src/pages/home/home_page.dart';
import 'package:shop/src/pages/login/login_binding.dart';
import 'package:shop/src/pages/login/login_page.dart';
import 'package:shop/src/pages/register/register_binding.dart';
import 'package:shop/src/pages/register/register_page.dart';
import 'package:shop/src/pages/splash/splash_binding.dart';
import 'package:shop/src/pages/splash/splash_page.dart';
import 'package:shop/src/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
