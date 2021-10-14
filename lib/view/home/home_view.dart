// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculator_app/constants/colors_constants.dart';
import 'package:calculator_app/provider/calculator_model.dart';
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
                          CalculatorButton(),
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

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).primaryColor),
          padding: MaterialStateProperty.all(
            EdgeInsets.all(15.0),
          ),
          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        onPressed: null,
        child: Text(
          'AC',
          style: TextStyle(
              color: kTurquoiseColor, fontSize: 30.0),
        ),
      ),
    );
  }
}
