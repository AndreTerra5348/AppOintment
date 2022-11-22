import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/presentation/client/search/widgets/results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'results_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ClientSearchBloc>()])
void main() {
  group("ClientSearchResultsWidget - ", () {
    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.loading()] "
        "When [ClientSearchResultsWidget] is built "
        "Then [ClientSearchResultsWidget] should show [CircularProgressIndicator]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial());
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.success()] "
        "When [ClientSearchResultsWidget] is built "
        "Then [ClientSearchResultsWidget] should show [ListView] with [ListTile]s",
        (tester) async {
      // Arrange
      const clientsAmount = 3;
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.success(),
        clients: _createClients(amount: clientsAmount),
      ));
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      // Assert

      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ListTile), findsNWidgets(clientsAmount));
    });

    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.success()] "
        "When [ClientSearchResultsWidget] is built "
        "Then [ClientSearchResultsWidget] should show [Text] with [AppLocalizations.noResultsFound]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.empty(),
      ));
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      // Assert
      expect(
          find.text(AppLocalizationsEn().searchNoResultsFound), findsOneWidget);
    });

    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.failure()] "
        "When [ClientSearchResultsWidget] is built "
        "Then [ClientSearchResultsWidget] should show [Text] with [AppLocalizations.databaseFailure(error)]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      final ex = Exception("error");
      when(mockBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: ClientSearchStatus.failure(
          failure: PageServiceFailure.dbException(error: ex),
        ),
      ));
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      // Assert
      expect(find.text(AppLocalizationsEn().databaseFailure(ex.toString())),
          findsOneWidget);
    });

    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.success()] "
        "And [ClientSearchResultsWidget] is built "
        "When [ListView] do not have enough content to fill the screen "
        "Then [ClientSearchBloc] should add [ClientSearchEvent.fetchRequested()]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();

      when(mockBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.success(),
        clients: _createClients(amount: 10),
      ));

      when(mockBloc.stream).thenAnswer(
        (_) => Stream.fromIterable(
          [
            ClientSearchState.initial().copyWith(
              status: const ClientSearchStatus.success(),
              clients: _createClients(amount: 10),
            ),
          ],
        ),
      );

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // schedule a frame to allow addPostFrameCallback to be called
      tester.binding.scheduleWarmUpFrame();

      // Assert
      verify(mockBloc.add(const ClientSearchEvent.fetchRequested())).called(1);
    });

    testWidgets(
        "Given [ClientSearchState.initial()] "
        "And [ClientSearchState.status] = [ClientSearchStatus.success()] "
        "And [ClientSearchResultsWidget] is built "
        "When [ListView] ScrollController is scrolled to the end "
        "Then [ClientSearchBloc] should add [ClientSearchEvent.fetchRequested()]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial().copyWith(
        status: const ClientSearchStatus.success(),
        clients: _createClients(amount: 20),
      ));

      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      await tester.drag(
          find.byType(ListView), const Offset(0, -1000)); // scroll to the end

      // Assert
      verify(mockBloc.add(const ClientSearchEvent.fetchRequested())).called(1);
    });
  });
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
