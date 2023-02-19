import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/client/create/client_create_validator.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/entity_repository.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/presentation/client/register/client_create_page.dart';
import 'package:appointment/presentation/client/register/widgets/client_create_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'client_create_page_test.mocks.dart';

@GenerateMocks([EntityRepository])
void main() {
  group("Client Create Page", () {
    testWidgets("Render ClientCreateFormWidget", (tester) async {
      // Arrange
      final clientCreatePage = ClientCreatePage(
        registerBloc: CreateBloc(
            MockEntityRepository<ClientModel, ClientModels, Client>(),
            ClientCreateValidator()),
        clientBloc: ClientBloc(),
      );
      await tester.pumpWidget(
        MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: clientCreatePage,
        ),
      );

      // Act
      // Assert
      expect(find.byType(ClientCreateFormWidget), findsOneWidget);
    });
  });
}
