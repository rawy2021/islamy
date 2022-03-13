import 'package:flutter/material.dart';

class MyThemeData {
  static const ColorBlack = Colors.black;
  static const ColorGold = Color.fromARGB(255, 183, 147, 95);

  static var lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: ColorGold,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: ColorBlack,
        ),
        color: Colors.transparent,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: ColorBlack,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          fontSize: 24,
          color: ColorBlack,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorGold,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ));

  static var darkTheme = ThemeData(
    appBarTheme: AppBarTheme(),
  );
}
