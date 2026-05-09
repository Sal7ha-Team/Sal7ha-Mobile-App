import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  // Light Theme Data
  static final ThemeData lightTheme = ThemeData(
    disabledColor: AppColors.white,
    splashColor: AppColors.offWhite,
    hoverColor: AppColors.bookCard,
    canvasColor: AppColors.offWhite,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.white,
    hintColor: AppColors.offWhite,
    cardColor: AppColors.offWhite,
    dividerColor: AppColors.offWhite,
    focusColor: AppColors.grey,
    indicatorColor: AppColors.black,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.black),
    textTheme: TextTheme(
      displaySmall: AppStyles.InterSemiBold18DarkBlack,
      bodyLarge: AppStyles.InterExtraBold32darckBlack,
      bodyMedium: AppStyles.Roboto12Regulargrey2,
      bodySmall: AppStyles.RobotoMedium14grey2,
      headlineLarge: AppStyles.RobotoBold32DarkBlack,
      headlineMedium: AppStyles.InterBold16white,
      headlineSmall: AppStyles.RobotoSemiBold12DarkBlack,
      labelMedium: AppStyles.InterMedium14darckBlack,
      labelLarge: AppStyles.InterMedium22darckBlack,
      labelSmall: AppStyles.RobotoMedium16darckBlack,
      titleLarge: AppStyles.InterBold18darckBlack,
      titleMedium: AppStyles.RobotoSemiBold20DarkBlack,
      titleSmall: AppStyles.RobotoSemiBold10Grey,
    ),
  );

  // Dark Theme Data
  static final ThemeData darkTheme = ThemeData(
        disabledColor: AppColors.grey2 ,
    splashColor: AppColors.grey2,
    hoverColor: AppColors.grey2,
    canvasColor: AppColors.darkGrey,
    hintColor: AppColors.grey,
    indicatorColor: AppColors.white,
    primaryColor: AppColors.black,
    cardColor: AppColors.darkGrey,
    dividerColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.black,
    focusColor: AppColors.white,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.darkGrey),
    textTheme: TextTheme(
      displaySmall: AppStyles.InterSemiBold18white,
      bodyLarge: AppStyles.InterExtraBold32white,
      bodyMedium: AppStyles.Roboto12RegularoffWhite,
      bodySmall: AppStyles.RobotoMedium14offWhite,
      headlineLarge: AppStyles.RobotoBold32white,
      headlineMedium: AppStyles.InterBold16darckBlack,
      headlineSmall: AppStyles.RobotoSemiBold12White,
      labelLarge: AppStyles.InterMedium22white,
      labelMedium: AppStyles.InterMedium14white,
      labelSmall: AppStyles.RobotoMedium16white,
      titleLarge: AppStyles.InterBold18offWhite,
      titleMedium: AppStyles.RobotoSemiBold20White,
      titleSmall: AppStyles.RobotoSemiBold10offWhite,
    ),
  );
}
