library flutter_responsive;

import 'package:flutter/material.dart';

extension SizeExtension on num {
  double size(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.shortestSide;
    double baseSize = toDouble();
    return baseSize * screenSize / 400; // Assuming 400 is the base screen size
  }

  double fontSize(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.shortestSide;
    double baseFontSize = toDouble();
    bool isTablet = screenSize >= 600;
    bool isDesktop = screenSize >= 1200;

    double fontSize = baseFontSize;

    if (isTablet) {
      fontSize *= 1.5; // Increase by 50% for tablets
    } else if (isDesktop) {
      fontSize *= 2.0; // Double for desktops
    }

    fontSize *= screenSize / 400; // Assuming 400 is the base screen size

    return fontSize;
  }
}
