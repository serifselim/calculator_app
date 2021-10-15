import 'package:calculator_app/provider/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  

  final String buttonType;
  final Color buttonTextColor;

  const CalculatorButton(this.buttonType,this.buttonTextColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: ElevatedButton(
        style: CalcButtonStyle(context),
        onPressed: (){
          Provider.of<CalculatorModel>(context, listen: false).buttonPressed(buttonType);
        },
        child: CalcButtonText(),
      ),
    );
  }

  Text CalcButtonText() {
    return Text(
        buttonType,
        style: TextStyle(
            color: buttonTextColor, fontSize: 30.0),
      );
  }

  ButtonStyle CalcButtonStyle(BuildContext context) {
    return ButtonStyle(
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
      );
  }
}