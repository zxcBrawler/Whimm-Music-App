import 'package:flutter/material.dart';
import 'package:music_app_flutter/config/app_colors.dart';

final ThemeData darkAppTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
);

const TextStyle headersTextStyle = TextStyle(
    fontFamily: "HammersmithOne", color: AppColors.textColorMain, fontSize: 26);

const TextStyle buttonsTextStyle = TextStyle(
    fontFamily: "HammersmithOne", color: AppColors.textColorMain, fontSize: 22);
const TextStyle basicTextStyle = TextStyle(
    fontFamily: "HammersmithOne",
    color: AppColors.textColorMain,
    decoration: TextDecoration.none,
    decorationThickness: 0,
    fontSize: 18);

const TextStyle secondaryTextStyle = TextStyle(
    fontFamily: "HammersmithOne", color: AppColors.textColorMain, fontSize: 16);

const TextStyle hintTextStyle = TextStyle(
    fontFamily: "HammersmithOne", color: AppColors.hintColorMain, fontSize: 18);
