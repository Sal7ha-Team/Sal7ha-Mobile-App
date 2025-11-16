import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.white,
    indicatorColor: AppColors.darkGray,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
    ),
    textTheme: TextTheme(
      labelLarge: AppStyles.bold18black,
      labelSmall: AppStyles.medium12black,
      labelMedium: AppStyles.medium14DarkGray,
      headlineMedium: AppStyles.semibold20black,
      headlineLarge: AppStyles.extraBold32black,
    ),
  );


  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkGray,
    indicatorColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.darkGray,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blackOlive,
    ),
    textTheme: TextTheme(
      labelLarge: AppStyles.bold18black,
      labelMedium: AppStyles.medium14White,
      labelSmall: AppStyles.medium12white,
      headlineMedium: AppStyles.semibold20white,
      headlineLarge: AppStyles.extraBold32White,
    ),
  );


}