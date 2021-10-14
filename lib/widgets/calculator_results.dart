import 'package:calculator_app/constants/texts_constants.dart';
import 'package:flutter/material.dart';


class CalculatorResults extends StatelessWidget {
  const CalculatorResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('308', style: kHistoryTextStyle),
            SizedBox(
              width: 10.0,
            ),
            Text('x', style: kHistoryTextStyle),
             SizedBox(
              width: 10.0,
            ),
            Text('42', style: kHistoryTextStyle)
          ],
        ),
        Text('12,936', style: kMomentaryTextStyle, )
      ],
    );
  }
}
