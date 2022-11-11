import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'page_test.mocks.dart';

@GenerateMocks([ClientRepository])
void main() {
  group("Client Register Page", () {
    testWidgets("Enter name to name TextFormField",
        (WidgetTester tester) async {
      // Arrange
      const name = "Bob";
      await tester.pumpWidget(MaterialApp(
          home: ClientRegisterPage(
        bloc: ClientRegisterBloc(MockClientRepository()),
      )));
      await tester.pumpAndSettle();

      // Act
      await tester.enterText(find.byType(TextFormField), name);

      // Assert
      expect(find.byType(TextFormField), findsOneWidget);
    });
  });
}
