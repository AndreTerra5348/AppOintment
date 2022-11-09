import 'package:appointment/presentation/client/register/page.dart';
import 'package:appointment/presentation/client/register/widgets/name_input.dart';
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
      await tester.enterText(find.byKey(NameInputWidget.nameTextFormKey), name);

      // Assert
      expect(find.byKey(NameInputWidget.nameTextFormKey), findsOneWidget);
      expect(find.text(name), findsOneWidget);
    });
  });
}
