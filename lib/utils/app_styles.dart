import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles{
  static TextStyle medium22DarkGray = GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGray,
  );
  static TextStyle medium16DarkGray = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGray,
  );
  static TextStyle medium16Gray = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.gray,
  );
  static TextStyle medium16Black = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.blackOlive,
  );
  static TextStyle medium16Yellow = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.yellow,
  );
  static TextStyle medium20white = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static TextStyle medium16white = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
}