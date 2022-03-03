import 'package:flutter/material.dart';

Map<int, Color> colorSwatch = {
  50: const Color.fromRGBO(29, 195, 202, .1),
  100: const Color.fromRGBO(29, 195, 202, .2),
  200: const Color.fromRGBO(29, 195, 202, .3),
  300: const Color.fromRGBO(29, 195, 202, .4),
  400: const Color.fromRGBO(29, 195, 202, .5),
  500: const Color.fromRGBO(29, 195, 202, .6),
  600: const Color.fromRGBO(29, 195, 202, .7),
  700: const Color.fromRGBO(29, 195, 202, .8),
  800: const Color.fromRGBO(29, 195, 202, .9),
  900: const Color.fromRGBO(29, 195, 202, 1),
};

abstract class AppColors {
  static const Color colorPrimary = Color(0xFF1DC3CA);
  static const Color pageBackground = Color(0xFFFAFBFD);
  static const Color statusBarColor = Color(0xFF38686A);
  static const Color appBarColor = Color(0xFFFAFBFD);
  static const Color appBarIconColor = Color(0xFF808080);
  static const Color appBarTextColor = Color(0xFF000000);
}
