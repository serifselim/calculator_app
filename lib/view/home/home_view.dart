// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculator_app/constants/colors_constants.dart';
import 'package:calculator_app/provider/calculator_model.dart';
import 'package:calculator_app/widgets/calculator_button.dart';
import 'package:calculator_app/widgets/calculator_results.dart';
import 'package:calculator_app/widgets/themes_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorModel>(
      builder: (context, calculatorModel, child) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ThemesWidget(),
              SizedBox(
                height: 100.0,
              ),
              CalculatorResults(),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Theme.of(context).accentColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculatorButton('C', kTurquoiseColor),
                          CalculatorButton('<' , kTurquoiseColor),
                          CalculatorButton('%' , kTurquoiseColor),
                          CalculatorButton('/' , kBurntSienna),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculatorButton('7' , Theme.of(context).buttonColor),
                          CalculatorButton('8' , Theme.of(context).buttonColor),
                          CalculatorButton('9' , Theme.of(context).buttonColor),
                          CalculatorButton('*' , kBurntSienna),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculatorButton('4' , Theme.of(context).buttonColor),
                          CalculatorButton('5' , Theme.of(context).buttonColor),
                          CalculatorButton('6' , Theme.of(context).buttonColor),
                          CalculatorButton('-' , kBurntSienna),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculatorButton('1' , Theme.of(context).buttonColor),
                          CalculatorButton('2' , Theme.of(context).buttonColor),
                          CalculatorButton('3' , Theme.of(context).buttonColor),
                          CalculatorButton('+' , kBurntSienna),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalculatorButton('R' , Theme.of(context).buttonColor),
                          CalculatorButton('0' , Theme.of(context).buttonColor),
                          CalculatorButton('.' , Theme.of(context).buttonColor),
                          CalculatorButton('=' , kBurntSienna),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


