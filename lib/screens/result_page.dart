import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/bmiCalculator.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.bmiText, this.interpretation});
  final String bmiResult;
  final String bmiText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    final ResultsPage bmiArgs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15.0),
            child: Text('Your result', style: titleTextStyle),
          )),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              cardColor: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiArgs.bmiText,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiArgs.bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    bmiArgs.interpretation,
                    style: bmiCommentTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: BottomButton(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/',
              );
            },
            buttonTitle: 'Re-Calculate',
          ))
        ],
      ),
    );
  }
}
