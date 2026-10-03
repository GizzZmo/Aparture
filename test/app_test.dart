import 'package:aparture/app/aperture_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the three application surfaces', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: ApertureApp()));
    await tester.pumpAndSettle();

    expect(find.text('Files'), findsNWidgets(2));
    expect(find.text('View'), findsOneWidget);
    expect(find.text('AI'), findsOneWidget);

    await tester.tap(find.text('AI').last);
    await tester.pumpAndSettle();
    expect(find.text('AI will be available when configured.'), findsOneWidget);
  });
}
