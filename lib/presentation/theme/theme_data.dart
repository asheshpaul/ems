import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData buildThemeData() {
  var primaryColor = AppColors.primary;
  var onPrimaryColor = AppColors.onPrimary;
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: onPrimaryColor,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: onPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: primaryColor,
      suffixIconColor: primaryColor,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.inputBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.inputBorder),
      ),
    ),
  );
}