import 'package:bmo_calculator_app/utils/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget? tableBody;
  final Widget? desktopBody;

  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    this.tableBody,
    this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxHeight < kTabletBreakpoint) {
          return mobileBody;
        } else if (dimens.maxHeight >= kTabletBreakpoint &&
            dimens.maxWidth < kDesktopBreakpoint) {
          return tableBody ?? mobileBody;
        } else {
          return desktopBody ?? mobileBody;
        }
      },
    );
  }
}
