import 'package:bmo_calculator_app/ui/responsive_layout.dart';
import 'package:bmo_calculator_app/ui/splash_screen.dart';
import 'package:bmo_calculator_app/utils/max_widthContainer.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
      ),
      home: MaxWidthContainer(
        child: ResponsiveLayout(
          mobileBody: OnBoarding(),
          tableBody: OnBoarding(),
        ),
      ),
    );
  }
}
