import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier{
  ThemeData activeTheme = ThemeData.dark();

  void changeTheme (){
    activeTheme = ThemeData.light();
    notifyListeners();
  }
}