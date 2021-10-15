import 'package:calculator_app/provider/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  

  final String buttonType;
  final Color buttonTextColor;

  CalculatorButton(this.buttonType,this.buttonTextColor);

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
        onPressed: (){
          Provider.of<CalculatorModel>(context, listen: false).buttonPressed(buttonType);
        },
        child: Text(
          buttonType,
          style: TextStyle(
              color: buttonTextColor, fontSize: 30.0),
        ),
      ),
    );
  }
}