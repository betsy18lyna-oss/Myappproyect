import 'package:flutter/material.dart';

class AppTheme {

  static Color vino = Color(0xFF7B1E2B);
  static Color plomo = Color(0xFF707070);

  static ThemeData theme = ThemeData(

    primaryColor: vino,

    appBarTheme: AppBarTheme(
      backgroundColor: vino,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: vino,
      ),
    ),

  );
}