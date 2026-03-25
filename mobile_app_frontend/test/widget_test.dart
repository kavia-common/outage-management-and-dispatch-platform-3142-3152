import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app_frontend/main.dart';

void main() {
  testWidgets('App renders the preview title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Outage Management (Preview)'), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('Shows backend checking state initially', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Initial state kicks off an async check; we should see checking UI quickly.
    expect(find.textContaining('Backend:'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
