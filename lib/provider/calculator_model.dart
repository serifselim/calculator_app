import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/constants/themes_constants.dart';

ThemesConstants themesConstants = ThemesConstants();

class CalculatorModel extends ChangeNotifier{
  ThemeData activeTheme = themesConstants.kDarkTheme;

  void changeTheme (){
    if(activeTheme == themesConstants.kLightTheme){
      activeTheme = themesConstants.kDarkTheme;
    }else{
      activeTheme = themesConstants.kLightTheme;
    }
    notifyListeners();
  }
}