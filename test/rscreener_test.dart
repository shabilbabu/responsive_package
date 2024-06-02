// test/flutter_responsive_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screener/screener.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SizeExtension', () {
    testWidgets('size method works correctly', (WidgetTester tester) async {
      // Set up the test environment with a known screen size
      const double testScreenWidth = 800.0; // Example screen width

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MediaQuery(
              data: const MediaQueryData(size: Size(testScreenWidth, 600.0)),
              child: Builder(
                builder: (context) {
                  double size = 20.size(context);
                  // Assuming 400 is the base screen width
                  double expectedSize = 20.0 * testScreenWidth / 400.0;
                  expect(size, expectedSize);
                  return Container(); // Just a placeholder
                },
              ),
            ),
          ),
        ),
      );
    });

    testWidgets('fontSize method works correctly', (WidgetTester tester) async {
      // Set up the test environment with a known screen size
      const double testScreenWidth = 800.0; // Example screen width

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MediaQuery(
              data: const MediaQueryData(size: Size(testScreenWidth, 600.0)),
              child: Builder(
                builder: (context) {
                  double fontSize = 20.fontSize(context);
                  // Assuming 400 is the base screen width
                  double expectedFontSize = 20.0 * testScreenWidth / 400.0;
                  expect(fontSize, expectedFontSize);
                  return Container(); // Just a placeholder
                },
              ),
            ),
          ),
        ),
      );
    });
  });
}
