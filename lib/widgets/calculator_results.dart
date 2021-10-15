import 'package:calculator_app/provider/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorResults extends StatelessWidget {
  const CalculatorResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String equationText =
        Provider.of<CalculatorModel>(context).getEquationText();
    String historyText = Provider.of<CalculatorModel>(context).getHistoryText();
    return Container(
      margin: const EdgeInsets.only(right: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            historyText,
            style: TextStyle(
              fontSize: 19.0,
              color: Theme.of(context).buttonColor,
            ),
          ),
          Text(
            equationText,
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).buttonColor),
          )
        ],
      ),
    );
  }
}
