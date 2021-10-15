import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator_app/constants/themes_constants.dart';
import 'package:math_expressions/math_expressions.dart';

ThemesConstants themesConstants = ThemesConstants();

class CalculatorModel extends ChangeNotifier {
  ThemeData _activeTheme = themesConstants.kDarkTheme;
  String _equation = "0";
  String _expression = "";
  String _history = "";
  bool _isCalc = false;

  // Get Variables
  String getEquationText() {
    return _equation;
  }

  ThemeData getActiveTheme(){
    return _activeTheme;
  }

  String getHistoryText() {
    return _history;
  }

  void buttonPressed(value) {
    switch (value) {
      case '<':
        _delete();
        break;
      case 'C':
        _clear();
        break;
      case '=':
        _calc();
        break;
      default:
        _add(value);
    }

    notifyListeners();
  }

  void _calc() {
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
    _isCalc = true;
  }

  void _delete() {
    if (_equation.length > 1) {
      _equation = _equation.substring(0, _equation.length - 1);
    } else {
      _equation = "0";
    }
  }

  void _clear() {
    _equation = "0";
    _history = '';
    _isCalc = false;
  }

  void _add(value) {
    if (value != '%' && value != 'R') {
      if (_equation == '0') {
        _equation = value;
      } else {
        if (!_isCalc) {
          _equation += value;
        } else {
          _equation = _history + value;
          _history = '';
          _isCalc = false;
        }
      }
    }
  }

  void changeTheme(String themeType) {
    if (themeType == 'light') {
      _activeTheme = themesConstants.kLightTheme;
    } else {
      _activeTheme = themesConstants.kDarkTheme;
    }
    notifyListeners();
  }
}
