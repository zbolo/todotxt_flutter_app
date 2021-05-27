import 'package:flutter_test/flutter_test.dart';

import 'package:todotxt_flutter_app/ui/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TodoTxtApp());
  });
}
