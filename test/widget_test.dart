// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/BMI%20calculator.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/NewsApp/NevigatorBarNews.dart';

import 'package:untitled/main.dart';
import 'package:untitled/nevigatorBar.dart';
import 'package:untitled/secondScreenBmi.dart';
import 'package:untitled/stateful.dart';
import 'package:untitled/loginScreen.dart';
import 'package:untitled/tryLayout.dart';
import 'package:untitled/tryOne.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(NevigatorBarNews());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
