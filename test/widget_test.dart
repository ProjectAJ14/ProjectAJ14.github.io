import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_site/ui/home_screen.dart';

void main() {
  //Test Profile Image
  testWidgets('Test Profile Image', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );
    // Render Image from assets
    expect(find.byType(Text), findsNWidgets(2));
  });
}
