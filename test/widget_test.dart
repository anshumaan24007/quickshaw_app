
import 'package:flutter_test/flutter_test.dart';

import 'package:quickshaw_app/main.dart';

void main() {
  testWidgets('QuickShaw app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const QuickShawApp());

    expect(find.text('Enter your Email ID'), findsOneWidget);
    expect(find.text('Sign up with Google'), findsOneWidget);
  });
}
