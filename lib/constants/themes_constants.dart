// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'colors_constants.dart';

class ThemesConstants {
  ThemeData kDarkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kSharkColor,
    primaryColor: kSharkColor,
    accentColor: kCharadeColor,
    buttonColor: kWhiteColor,
  );

  ThemeData kLightTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kWhiteColor,
    primaryColor: kWhiteColor,
    accentColor: kAlabasterColor,
    buttonColor: kSharkColor,
    textSelectionColor: kSharkColor
  );
}