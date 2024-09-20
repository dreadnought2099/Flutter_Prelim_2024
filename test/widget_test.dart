import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exam_flutter_magallanes/main.dart';

void main() {
  testWidgets('Flutter Exam App Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the welcome message is displayed.
    expect(find.text('Welcome to the Flutter Exam!'), findsOneWidget);

    // Verify that the explanation text is displayed.
    expect(
        find.text(
            'This app demonstrates the use of assets, fonts, buttons, and icons in Flutter.'),
        findsOneWidget);

    // Verify that the settings icon is present.
    expect(find.byIcon(Icons.settings), findsOneWidget);

    // Tap the settings icon and verify that the Snackbar appears.
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pump(); // Rebuild the widget tree

    // Verify that the Snackbar is displayed.
    expect(find.text('Settings tapped!'), findsOneWidget);
  });
}
