import 'package:flutter/material.dart';

import 'package:shop/src/core/values/colors.dart';

appThemeData(BuildContext context) {
  return ThemeData(
    primarySwatch: AppColors.primaryColorSwatch,
    accentColor: Color(0xff553c51),
    hintColor: AppColors.hintColor,
    fontFamily: 'Metropolis',
    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: AppColors.lightBlack,
    ),
    // textTheme: TextTheme(
    //   headline1: TextStyle(color: AppColors.lightBlack),
    // ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.hintColor, width: 0.3),
      ),
    ),
  );
}

// final ThemeData appThemeData = ThemeData(
//   primarySwatch: AppColors.primaryColorSwatch,
//   accentColor: Color(0xff553c51),
//   hintColor: AppColors.hintColor,
//   fontFamily: 'Metropolis',
//   textTheme: TextTheme(
//     headline1: TextStyle(color: AppColors.lightBlack),
//   ),
//   inputDecorationTheme: InputDecorationTheme(
//     enabledBorder: UnderlineInputBorder(
//       borderSide: BorderSide(color: AppColors.hintColor, width: 0.3),
//     ),
//   ),
// );
