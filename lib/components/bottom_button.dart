import 'package:flutter/material.dart';
import '../constants.dart';
import '../screen/results_page.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultsPage()));
      },
      child: Container(
        child: Center(
            child: Text(
              'CALCULATE',
              style: klargeButtonTextStyle,
            )),
        color: kbottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        height: kbottomContainerHeight,
      ),
    );
  }
}