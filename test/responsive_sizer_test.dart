// test/flutter_responsive_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive_sizer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SizeExtension', () {
    testWidgets('size method works correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              double size = 20.size(context);
              return Container(); // Just a placeholder
            },
          ),
        ),
      );

      // Assuming 400 is the base screen size
      double expectedSize = 20.0 *
          800.0 /
          400.0; // Assuming 800 is the shortest side of the screen

      // Use tester.widget<>() to get the context
      final BuildContext context = tester.element(find.byType(Builder));
      double size = 20.size(context);
      expect(size, expectedSize);
    });

    testWidgets('fontSize method works correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              double fontSize = 20.fontSize(context);
              return Container(); // Just a placeholder
            },
          ),
        ),
      );

      // Assuming 400 is the base screen size
      double expectedFontSize = 20.0 *
          800.0 /
          400.0; // Assuming 800 is the shortest side of the screen

      // Use tester.widget<>() to get the context
      final BuildContext context = tester.element(find.byType(Builder));
      double fontSize = 20.fontSize(context);
      expect(fontSize, expectedFontSize);
    });
  });
}
