import 'package:bmi_calculator/splashscreen.dart';
import 'package:flutter/material.dart';

import 'screen/input_page.dart';

void main() => runApp(BMICalculator());
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,theme: ThemeData(
      primarySwatch: Colors.blue,

    ),
      home:SplashScreen(),
    );
  }
}


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
