// ignore_for_file: deprecated_member_use

import 'package:calculator_app/provider/calculator_model.dart';
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
            children: [
              ThemesWidget(),
            ],
          ),
        );
      },
    );
  }
}
