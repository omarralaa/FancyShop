import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/src/controllers/auth_controller.dart';
import 'package:shop/src/core/theme/app_theme.dart';
import 'package:shop/src/routes/app_pages.dart';
import 'package:shop/src/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AuthController>(AuthController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shop',
      theme: appThemeData(context),
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
    );
  }
}
