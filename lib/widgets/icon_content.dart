import 'package:flutter/material.dart';

import 'package:bmo_calculator_app/utils/constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  const IconContent({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
