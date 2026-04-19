import 'package:flutter_test/flutter_test.dart';

import 'package:medup_lite/main.dart';

void main() {
  testWidgets('Login ekranı açılır', (WidgetTester tester) async {
    await tester.pumpWidget(const MedUpLiteApp());
    await tester.pump();

    expect(find.text('Mini Katalog'), findsOneWidget);
    expect(find.text('Devam et'), findsOneWidget);
  });
}
