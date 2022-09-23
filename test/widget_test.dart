import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_site/ui/home_screen.dart';
import 'package:my_site/ui/widgets/link_widget.dart';

void main() {
  testWidgets('Test Widgets', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeScreen(),
      ),
    );
    await tester.pumpAndSettle();
    // Render Image from assets
    expect(find.byType(Text), findsNWidgets(1));
    expect(find.byType(LinkWidget), findsNWidgets(7));
  });
}
