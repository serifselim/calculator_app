import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/constants/themes_constants.dart';
import 'package:math_expressions/math_expressions.dart';

ThemesConstants themesConstants = ThemesConstants();

class CalculatorModel extends ChangeNotifier {
  ThemeData activeTheme = themesConstants.kDarkTheme;
  String _equation = "0";
  String _expression = "";
  String _result = "";
  String _history = "";
  bool isCalc = false;

  String getEquationText() {
    return _equation;
  }

  String getHistoryText() {
    return _history;
  }

  void buttonPressed(value) {
    switch (value) {
      case '<':
        delete();
        break;
      case 'C':
        clear();
        break;
      case '=':
        calc();
        break;
      default:
        add(value);
    }

    notifyListeners();
  }

  void calc() {
    _history = _equation;
    _expression = _equation;
    _expression = _expression.replaceAll('×', '*');
    _expression = _expression.replaceAll('÷', '/');

    try {
      Parser p = Parser();
      Expression exp = p.parse(_equation);
      ContextModel cm = ContextModel();
      _equation = '${exp.evaluate(EvaluationType.REAL, cm)}';
    } catch (e) {
      _equation = "Error";
    }
    isCalc = true;
  }

  void delete() {
    if (_equation.length > 1) {
      _equation = _equation.substring(0, _equation.length - 1);
    } else {
      _equation = "0";
    }
  }

  void clear() {
    _equation = "0";
    _history = '';
    isCalc = false;
  }

  void add(value) {
    if (value != '%' || value != 'R') {
      if (_equation == '0') {
        _equation = value;
      } else {
        if (!isCalc) {
          _equation += value;
        } else {
          _equation = _history + value;
          _history = '';
          isCalc = false;
        }
      }
    }
  }

  void changeTheme(String themeType) {
    if (themeType == 'light') {
      activeTheme = themesConstants.kLightTheme;
    } else {
      activeTheme = themesConstants.kDarkTheme;
    }
    notifyListeners();
  }
}
