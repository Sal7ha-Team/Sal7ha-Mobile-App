import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles{
  static TextStyle bold18black = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGray,
  );
  static TextStyle bold18white = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static TextStyle medium14DarkGray = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGray,
  );
  static TextStyle medium16black = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGray,
  );
  static TextStyle medium14White = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static TextStyle extraBold32White = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
  );
  static TextStyle extraBold32black = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: AppColors.darkGray,
  );
  static TextStyle medium12black = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGray,
  );
  static TextStyle medium12white = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static TextStyle semibold20black = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkGray,
  );
  static TextStyle semibold20white = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}