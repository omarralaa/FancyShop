import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primaryColorSwatch =
      MaterialColor(0xFFfa5951, primaryColorMap);

  static Map<int, Color> primaryColorMap = {
    50: Color.fromRGBO(250, 89, 81, .1),
    100: Color.fromRGBO(250, 89, 81, .2),
    200: Color.fromRGBO(250, 89, 81, .3),
    300: Color.fromRGBO(250, 89, 81, .4),
    400: Color.fromRGBO(250, 89, 81, .5),
    500: Color.fromRGBO(250, 89, 81, .6),
    600: Color.fromRGBO(250, 89, 81, .7),
    700: Color.fromRGBO(250, 89, 81, .8),
    800: Color.fromRGBO(250, 89, 81, .9),
    900: Color.fromRGBO(250, 89, 81, 1),
  };

  static Color hintColor = Color(0xffbfbfbf);

  static Color lightBlack = Color(0xff222222);

  static Color greyText = Color(0xff9B9B9B);

  static Color extrasRed = Color(0xffDB3022);
}
