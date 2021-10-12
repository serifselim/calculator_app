import 'package:calculator_app/provider/calculator_model.dart';
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
              TextButton(
                onPressed: () {
                  calculatorModel.changeTheme();
                },
                child: const Icon(Icons.ac_unit_sharp),
              ),
            ],
          ),
        );
      },
    );
  }
}
