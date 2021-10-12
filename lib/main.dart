// ignore_for_file: prefer_const_constructors

import 'package:calculator_app/provider/calculator_model.dart';
import 'package:calculator_app/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CalculatorModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: Provider.of<CalculatorModel>(context).activeTheme,
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
