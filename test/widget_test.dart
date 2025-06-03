// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab3/main.dart'; // Make sure this import points to your main.dart file where RecipeApp is defined.

void main() {
  testWidgets('RecipeApp shows title Recipes', (WidgetTester tester) async {
    // Build the RecipeApp and trigger a frame.
    await tester.pumpWidget(const RecipeApp());

    // Verify that the title 'Recipes' appears in the app.
    expect(find.text('Recipes'), findsOneWidget);

    // Optionally test that a category like 'Beef' is found
    expect(find.text('Beef'), findsOneWidget);
  });
}
