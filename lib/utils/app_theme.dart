import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // Light Theme Data
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.white,
  );

  // Dark Theme Data
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkGray,
    primaryColor: AppColors.darkGray,
  );
}
