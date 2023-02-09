import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("String should be encrypted", (WidgetTester tester) async {
    await tester.pumpWidget(HomeView());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, "hello");
    expect(find.text("hello"), findsOneWidget);
    var button = find.text("Encryption");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(
        find.text("EncryptText : MP22VhPM35WlJ0mTSdtitA=="), findsOneWidget);
  });

}