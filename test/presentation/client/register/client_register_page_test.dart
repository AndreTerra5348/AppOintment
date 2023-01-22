import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/client/register/client_register_validator.dart';
import 'package:appointment/application/register/bloc/register_bloc.dart';
import 'package:appointment/infrastructure/drift/client/client_repository.dart';
import 'package:appointment/presentation/client/register/client_register_page.dart';
import 'package:appointment/presentation/client/register/widgets/client_register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'client_register_page_test.mocks.dart';

@GenerateMocks([ClientRepository])
void main() {
  group("Client Register Page", () {
    testWidgets("Render ClientRegisterFormWidget", (tester) async {
      // Arrange
      final clientRegisterPage = ClientRegisterPage(
        registerBloc:
            RegisterBloc(MockClientRepository(), ClientRegisterValidator()),
        clientBloc: ClientBloc(),
      );
      await tester.pumpWidget(
        MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: clientRegisterPage,
        ),
      );

      // Act
      // Assert
      expect(find.byType(ClientRegisterFormWidget), findsOneWidget);
    });
  });
}
