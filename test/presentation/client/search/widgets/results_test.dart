import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:appointment/presentation/app_ointment.dart';
import 'package:appointment/presentation/client/details/page.dart';
import 'package:appointment/presentation/client/search/widgets/results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../../common/failure_fixture.dart' as failure_fixture;
import '../../../config/mock_di.dart' as mock_di;
import 'results_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ClientSearchBloc>(),
  MockSpec<ClientDao>(unsupportedMembers: {#table, #alias}),
])
void main() {
  late MockClientSearchBloc searchBloc;
  setUp(() {
    searchBloc = MockClientSearchBloc();
    when(searchBloc.state).thenReturn(ClientSearchState.initial());
    when(searchBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group("Given [State.status] is [loading()]", () {
    testWidgets(
      "Render [CircularProgressIndicator]",
      (tester) async {
        await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );
  });

  group(
    "Given [State.status] is [success()]",
    () {
      const clientsAmount = 10;
      late ClientSearchState state;
      setUp(() {
        state = ClientSearchState.initial().copyWith(
          status: const ClientSearchStatus.success(),
          clients: _createClients(amount: clientsAmount),
        );
        when(searchBloc.state).thenReturn(state);
        when(searchBloc.stream).thenAnswer(
          (_) => Stream.fromIterable([state]),
        );
      });

      testWidgets(
        "Render [ListView] with [ListTiles] for each client",
        (tester) async {
          await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

          expect(find.byType(ListView), findsOneWidget);
          expect(find.byType(ListTile), findsNWidgets(clientsAmount));
        },
      );

      testWidgets(
        "When [ListView] do not have enough content to fill the screen "
        "Add [Event.fetchRequested()] once",
        (tester) async {
          await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

          // schedule a frame to allow addPostFrameCallback to be called
          tester.binding.scheduleWarmUpFrame();

          // Assert
          verify(searchBloc.add(const ClientSearchEvent.fetchRequested()))
              .called(1);
        },
      );

      testWidgets(
        "When [ListView] ScrollController is scrolled to the end "
        "Add [Event.fetchRequested()] once",
        (tester) async {
          // Arrange
          when(searchBloc.state)
              .thenReturn(ClientSearchState.initial().copyWith(
            status: const ClientSearchStatus.success(),
            clients: _createClients(amount: 20),
          ));

          await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

          // Act
          // scroll to the end
          await tester.drag(
            find.byType(ListView),
            const Offset(0, -1000),
          );

          // Assert
          verify(
            searchBloc.add(const ClientSearchEvent.fetchRequested()),
          ).called(1);
        },
      );
    },
  );

  group("Given [State.status] is [empty()]", () {
    setUp(() {
      when(searchBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.empty(),
      ));
    });
    testWidgets(
      "Render [Text] with [AppLocalizations.noResultsFound]",
      (tester) async {
        await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

        expect(find.text(AppLocalizationsEn().noResultsFound), findsOneWidget);
      },
    );
  });

  group("Given [State.status] is [failure()]", () {
    setUp(() {
      when(searchBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.failure(
          failure: failure_fixture.dbErrorPageServiceFailure,
        ),
      ));
    });
    testWidgets(
      "Render localized error message",
      (tester) async {
        await tester.pumpWidget(MockClientSearchPage(bloc: searchBloc));

        expect(
            find.text(AppLocalizationsEn()
                .databaseFailure(failure_fixture.dbErrorMessage)),
            findsOneWidget);
      },
    );
  });

  testWidgets(
    "When [ListTile] is tapped "
    "Navigate to [ClientDetailsPage] with [Client.id] as argument",
    (tester) async {
      final mockClientDao = MockClientDao();

      final models =
          Iterable.generate(5).map((e) => ClientModel(id: e + 1, name: "Bob"));

      when(mockClientDao.getPage(
        limit: anyNamed("limit"),
        offset: anyNamed("offset"),
        filter: anyNamed("filter"),
      )).thenAnswer((_) => Future.value(models));

      mock_di.mockServicesConfiguration(mockClientDao);

      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(
        find.widgetWithText(
          ListTile,
          AppLocalizationsEn().homeDrawerClientSearch,
        ),
      );
      await tester.pumpAndSettle();

      final clientTile = find.text(models.first.id.toString());
      await tester.tap(clientTile);
      await tester.pumpAndSettle();

      expect(find.byType(ClientDetailsPage), findsOneWidget);
    },
  );
}

Iterable<Client> _createClients({int amount = 1}) {
  return Iterable.generate(amount).map(
    (e) => Client(
      id: Uid.fromInt(e),
      name: Name("Bob"),
    ),
  );
}

class MockClientSearchPage extends StatelessWidget {
  final ClientSearchBloc bloc;
  const MockClientSearchPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: const ClientSearchResultsWidget(),
        ),
      ),
    );
  }
}
