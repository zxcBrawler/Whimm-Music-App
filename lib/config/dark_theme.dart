import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_flutter/config/app_colors.dart';

final ThemeData darkAppTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
);

final TextStyle headersTextStyle = TextStyle(
    fontFamily: GoogleFonts.hammersmithOne().fontFamily,
    color: AppColors.textColorMain,
    fontSize: 26);

final TextStyle buttonsTextStyle = TextStyle(
    fontFamily: GoogleFonts.hammersmithOne().fontFamily,
    color: AppColors.textColorMain,
    fontSize: 22);
final TextStyle basicTextStyle = TextStyle(
    fontFamily: GoogleFonts.hammersmithOne().fontFamily,
    color: AppColors.textColorMain,
    decoration: TextDecoration.none,
    decorationThickness: 0,
    fontSize: 18);

final TextStyle secondaryTextStyle = TextStyle(
    fontFamily: GoogleFonts.hammersmithOne().fontFamily,
    color: AppColors.textColorMain,
    fontSize: 16);

final TextStyle hintTextStyle = TextStyle(
    fontFamily: GoogleFonts.hammersmithOne().fontFamily,
    color: AppColors.hintColorMain,
    fontSize: 18);
