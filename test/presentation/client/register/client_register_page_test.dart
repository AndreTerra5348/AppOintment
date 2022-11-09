import 'package:appointment/presentation/client/register/client_register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Register Page", () {
    testWidgets("Name TextFormField should be displayed",
        (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(const MaterialApp(home: ClientRegisterPage()));
      await tester.pumpAndSettle();

      // Act

      // Assert
      expect(find.byKey(ClientRegisterPage.nameTextFormKey), findsOneWidget);
    });
  });
}
