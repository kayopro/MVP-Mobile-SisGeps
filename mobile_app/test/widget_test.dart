import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_app/main.dart';
import 'package:mobile_app/screens/initial_screen.dart';
import 'package:mobile_app/screens/login_screen.dart';

void main() {
  testWidgets('Navigation Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Expect to find InitialScreen as the first screen.
    expect(find.byType(InitialScreen), findsOneWidget);
    expect(find.byType(LoginScreen), findsNothing);

    // Tap the button to navigate to LoginScreen.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    // Expect to find LoginScreen after navigation.
    expect(find.byType(InitialScreen), findsNothing);
    expect(find.byType(LoginScreen), findsOneWidget);
  });
}
