import 'package:appointment/presentation/client/register/client_register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Register Page", () {
    testWidgets("Enter name to name TextFormField",
        (WidgetTester tester) async {
      // Arrange
      const name = "Bob";
      await tester.pumpWidget(const MaterialApp(home: ClientRegisterPage()));
      await tester.pumpAndSettle();

      // Act
      await tester.enterText(
          find.byKey(ClientRegisterPage.nameTextFormKey), name);

      // Assert
      expect(find.byKey(ClientRegisterPage.nameTextFormKey), findsOneWidget);
      expect(find.text(name), findsOneWidget);
    });
  });
}
