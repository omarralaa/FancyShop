import 'package:flutter/material.dart';

import 'package:shop/src/core/values/colors.dart';

final ThemeData appThemeData = ThemeData(
  primarySwatch: AppColors.primaryColorSwatch,
  accentColor: Color(0xff553c51),
  hintColor: AppColors.hintColor,
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.hintColor, width: 0.3),
    ),
  ),
);
