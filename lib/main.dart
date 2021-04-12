import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/pages/splash/splash_page.dart';
import 'package:shop/src/routes/app_pages.dart';
import 'package:shop/src/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
    );
  }
}
