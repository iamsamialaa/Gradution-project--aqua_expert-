import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 60, 90, 84),
      primaryContainer: Color(0xffe0e0e0),
      secondary: Color(0xff174a5e),
      secondaryContainer: Color(0xffc2d6df),
      surface: Color(0xff85CEBB),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xff85CEBB),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'changa',
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
        labelTextStyle: WidgetStatePropertyAll(TextStyle(
      color: Colors.white,
      fontFamily: 'Kufam',
      fontWeight: FontWeight.bold,
      fontSize: 10,
    ))),
  );
}
