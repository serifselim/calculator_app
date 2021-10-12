import 'package:calculator_app/provider/calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemesWidget extends StatelessWidget {
  const ThemesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).accentColor,
        ),
        margin: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ThemeButton(
              context: context,
              themeType: 'light',
              icon: Icons.light_mode_outlined
            ),
            ThemeButton(
              context: context,
              themeType: 'dark',
              icon: Icons.dark_mode_outlined
            ),
          ],
        ),
      ),
    );
  }

  TextButton ThemeButton({required BuildContext context, required String themeType, required IconData icon}) {
    return TextButton(
            onPressed: () {
              Provider.of<CalculatorModel>(context, listen: false).changeTheme(themeType);
            },
            child: Icon(
              icon,
              color: Theme.of(context).buttonColor,
            ),
          );
  }
}