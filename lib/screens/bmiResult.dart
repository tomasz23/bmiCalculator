import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusableCard.dart';
import '../components/bottomButton.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: kLabelLargeTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colorTile: kActiveMasterColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            bottomButton(
              label: "RECALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
