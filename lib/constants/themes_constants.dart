// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colors_constants.dart';

class ThemesConstants {
  ThemeData kDarkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kSharkColor,
    primaryColor: kSharkColor,
    accentColor: kCharadeColor,
    buttonColor: kWhiteColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w900,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w400
      )
    )
  );

  ThemeData kLightTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kWhiteColor,
    primaryColor: kWhiteColor,
    accentColor: kAlabasterColor,
    buttonColor: kSharkColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w900,
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.w400
      )
    )
  );
}