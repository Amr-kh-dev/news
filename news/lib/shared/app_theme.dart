import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF39A552);
  static const Color wihte = Color(0xFFffffff);
  static const Color navy = Color(0xFF42505C);
  static const Color red = Color(0xFFC91C22);
  static const Color blue = Color(0xFF003E90);
  static const Color pink = Color(0xFFED1E79);
  static const Color bage = Color(0xFFCF7E48);
  static const Color bebeblue = Color(0xFF4882CF);
  static const Color yello = Color(0xFFF2D352);
  static const Color black = Color(0xFF303030);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: AppTheme.primary,
        centerTitle: true,
        foregroundColor: wihte,
        titleTextStyle: const TextStyle(
          color: wihte,
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      )));
  static ThemeData darkTheme = ThemeData();
}
