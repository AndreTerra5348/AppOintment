import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/infrastructure/client/dao.dart';
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
import '../../../../common/client_fixture.dart' as client_fixture;
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
          clients: client_fixture.generateEntity(amount: clientsAmount),
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
        "When [ListView] do not have enough content to fill the screen "
        "And didChangeMetrics is called "
        "Add [Event.fetchRequested()] twice",
        (tester) async {
          const resultWidget = ClientSearchResultsWidget();
          await tester.pumpWidget(MockClientSearchPage(
            bloc: searchBloc,
            resultsWidget: resultWidget,
          ));

          // schedule a frame to allow addPostFrameCallback to be called
          tester.binding.scheduleWarmUpFrame();

          // get ClientSearchResultsWidget state which is a WidgetsBindingObserver
          WidgetsBindingObserver observer =
              tester.state(find.byType(ClientSearchResultsWidget))
                  as WidgetsBindingObserver;

          // Act
          observer.didChangeMetrics();

          // schedule a frame to allow addPostFrameCallback to be called
          tester.binding.scheduleWarmUpFrame();

          // Assert
          verify(searchBloc.add(const ClientSearchEvent.fetchRequested()))
              .called(2);
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
            clients: client_fixture.generateEntity(amount: 20),
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
                .databaseFailure(failure_fixture.errorMessage)),
            findsOneWidget);
      },
    );
  });

  testWidgets(
    "When [ListTile] is tapped "
    "Navigate to [ClientDetailsPage] with [Client.id] as argument",
    (tester) async {
      final mockClientDao = MockClientDao();

      final models = client_fixture.generateModel(amount: 5);

      when(mockClientDao.getPage(
        limit: anyNamed("limit"),
        offset: anyNamed("offset"),
        filter: anyNamed("filter"),
      )).thenAnswer((_) => Future.value(models));

      when(mockClientDao.getById(any)).thenAnswer(
        (_) async => models.first,
      );

      mock_di.mockServicesConfiguration(mockClientDao);

      await tester.pumpWidget(AppOintment());
      await tester.pumpAndSettle();

      await tester.tap(
        find.widgetWithText(
          ElevatedButton,
          AppLocalizationsEn().pageClientSearchTitle,
        ),
      );
      await tester.pumpAndSettle();

      final clientTile = find.text(models.first.id.getOrThrow().toString());
      await tester.tap(clientTile);
      await tester.pumpAndSettle();

      expect(find.byType(ClientDetailsPage), findsOneWidget);
    },
  );
}

class MockClientSearchPage extends StatelessWidget {
  final ClientSearchBloc bloc;
  final ClientSearchResultsWidget resultsWidget;
  const MockClientSearchPage(
      {super.key,
      required this.bloc,
      this.resultsWidget = const ClientSearchResultsWidget()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: resultsWidget,
        ),
      ),
    );
  }
}
