import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/presentation/app_ointment.dart';
import 'package:appointment/presentation/client/register/client_register_page.dart';
import 'package:appointment/presentation/client/search/client_search_page.dart';
import 'package:appointment/presentation/home/home_page.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../config/mock_di_config.dart' as mock_di;
import 'home_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ClientDao>(unsupportedMembers: {#table, #alias}),
  MockSpec<SimpleSelectStatement>(),
])
void main() {
  final MockClientDao mockClientDao = MockClientDao();
  mock_di.mockServicesConfiguration(mockClientDao);

  setUp(() async {
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelection.get()).thenAnswer((_) => Future.value([]));
    when(mockClientDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);
  });

  testWidgets(
    "Render localized app title",
    (tester) async {
      await tester.pumpWidget(const MockApp());
      expect(
        find.text(AppLocalizationsEn().appointmentTitle),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "Render build name",
    (tester) async {
      await tester.pumpWidget(const MockApp());
      await tester.pump();
      expect(
        find.text("1.0.0"),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "Render localized app subtitle",
    (tester) async {
      await tester.pumpWidget(const MockApp());
      expect(
        find.text(AppLocalizationsEn().appointmentSubtitle),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "Render ElevatedButton with pageClientRegisterTitle localized text",
    (tester) async {
      await tester.pumpWidget(const MockApp());
      expect(
        find.widgetWithText(
          ElevatedButton,
          AppLocalizationsEn().pageClientRegisterTitle,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "Render ElevatedButton with pageClientSearchTitle localized text",
    (tester) async {
      await tester.pumpWidget(const MockApp());
      expect(
        find.widgetWithText(
          ElevatedButton,
          AppLocalizationsEn().pageClientSearchTitle,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    "When Client Regiter button is pressed"
    "Then ClientRegisterPage is rendered",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.tap(
        find.widgetWithText(
          ElevatedButton,
          AppLocalizationsEn().pageClientRegisterTitle,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(ClientRegisterPage), findsOneWidget);
    },
  );

  testWidgets(
    "When Client Search button is pressed"
    "Then ClientSearchPage is rendered",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.tap(
        find.widgetWithText(
          ElevatedButton,
          AppLocalizationsEn().pageClientSearchTitle,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(ClientSearchPage), findsOneWidget);
    },
  );
}

class MockApp extends StatelessWidget {
  const MockApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}
