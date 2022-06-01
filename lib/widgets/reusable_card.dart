import 'package:bmo_calculator_app/ui/responsive_layout.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  ReusableCard({
    Key? key,
    required this.color,
    this.cardChild,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: GestureDetector(
        onTap: onPress,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: cardChild,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: color,
          ),
        ),
      ),
      tableBody: GestureDetector(
        onTap: onPress,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: cardChild,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: color,
          ),
        ),
      ),
    );
  }
}
