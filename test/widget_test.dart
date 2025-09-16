// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pos_app/main.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const POSApp());

    // Verify that the login screen is displayed
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2)); // username and password
    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);

    // Enter username and password
    await tester.enterText(find.byType(TextField).first, 'testuser');
    await tester.enterText(find.byType(TextField).last, 'testpass');

    // Tap the login button
    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pumpAndSettle();

    // Verify navigation to dashboard
    expect(find.text('Dashboard'), findsOneWidget);
  });
}
