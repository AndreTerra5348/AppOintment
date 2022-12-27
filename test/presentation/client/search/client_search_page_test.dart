import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/presentation/client/search/client_search_page.dart';
import 'package:appointment/presentation/client/search/widgets/client_search_bar.dart';
import 'package:appointment/presentation/client/search/widgets/client_search_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'client_search_page_test.mocks.dart';

@GenerateMocks([ClientSearchBloc])
void main() {
  group("ClientSearchPage - ", () {
    testWidgets(
        "Given [ClientSearchState.initial()] "
        "When [ClientSearchPage] is built "
        "Then [ClientSearchPage] should show [ClientSearchBarWidget] "
        "And [ClientSearchPage] should show [ClientSearchResultsWidget] "
        "And [ClientSearchPage] should add [ClientSearchEvent.fetchRequested()]",
        (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial());
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: ClientSearchPage(bloc: mockBloc),
        ),
      );
      // Act
      // Assert

      expect(find.byType(ClientSearchBarWidget), findsOneWidget);
      expect(find.byType(ClientSearchResultsWidget), findsOneWidget);
      verify(mockBloc.add(const ClientSearchEvent.fetchRequested()));
    });
  });
}
