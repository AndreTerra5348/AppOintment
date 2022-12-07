import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/presentation/app_ointment.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:appointment/presentation/client/search/page.dart';
import 'package:appointment/presentation/home/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../config/mock_di.dart' as mock_di;

import 'drawer_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ClientDao>(unsupportedMembers: {#table, #alias}),
])
void main() {
  final MockClientDao mockClientDao = MockClientDao();
  mock_di.mockServicesConfiguration(mockClientDao);
  setUp(() {
    when(mockClientDao.getPage(
      limit: anyNamed("limit"),
      offset: anyNamed("offset"),
      filter: anyNamed("filter"),
    )).thenAnswer((_) => Future.value(const Iterable.empty()));
  });
  testWidgets(
    "Render DrawerHeader text",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      expect(find.text(AppLocalizationsEn().homeDrawerTitle), findsOneWidget);
    },
  );
  testWidgets(
    "Render Register button",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      expect(find.text(AppLocalizationsEn().homeDrawerClientRegister),
          findsOneWidget);
    },
  );
  testWidgets(
    "Render Search button",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      expect(find.text(AppLocalizationsEn().homeDrawerClientSearch),
          findsOneWidget);
    },
  );

  testWidgets(
    "Navigate to ClientSearchPage "
    "when search button is pressed ",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.byType(HomeDrawer), findsOneWidget);

      await tester.tap(find.text(AppLocalizationsEn().homeDrawerClientSearch));
      await tester.pumpAndSettle();

      expect(find.byType(ClientSearchPage), findsOneWidget);
    },
  );

  testWidgets(
    "Navigate to ClientRegisterPage "
    "When register button is pressed ",
    (tester) async {
      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.byType(HomeDrawer), findsOneWidget);

      await tester
          .tap(find.text(AppLocalizationsEn().homeDrawerClientRegister));
      await tester.pumpAndSettle();

      expect(find.byType(ClientRegisterPage), findsOneWidget);
    },
  );
}
