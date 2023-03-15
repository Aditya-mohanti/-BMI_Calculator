import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation,this.bmiResult,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CACULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: ktitleTextStyle,
                ),
              ),
          ),
          Expanded(
              flex: 5,
            child: ReusableCard(
                colour: kactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                    'NORMAL',
                    style: kresultsTextStyle,
                  ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quite low eat more!',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}
