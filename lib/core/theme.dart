import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/core/size.dart';

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    fontFamily: "studycafe",
    primarySwatch: primaryWhite,
    scaffoldBackgroundColor: primaryWhite,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    titleTextStyle: TextStyle(
        color: kMainColor, fontWeight: FontWeight.bold, fontSize: fontLarge),
    centerTitle: true,
    elevation: 0,
  );
}
