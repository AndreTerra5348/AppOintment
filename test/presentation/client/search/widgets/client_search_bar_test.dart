import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/presentation/client/search/widgets/client_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'client_search_bar_test.mocks.dart';

@GenerateMocks([ClientSearchBloc])
void main() {
  group("ClientSearchBarWidget - ", () {
    testWidgets("renders a text form field", (tester) async {
      // Arrange
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial());
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act

      // Assert
      expect(find.byType(TextFormField), findsOneWidget);
    });

    testWidgets("Should add [TermChanged] event to bloc when text changed",
        (tester) async {
      // Arrange
      const term = "Bob";
      final mockBloc = MockClientSearchBloc();
      when(mockBloc.state).thenReturn(ClientSearchState.initial());
      when(mockBloc.stream).thenAnswer((_) => const Stream.empty());

      await tester.pumpWidget(MockClientSearchPage(bloc: mockBloc));

      // Act
      await tester.enterText(find.byType(TextFormField), term);
      await tester.pump();

      // Assert
      verify(mockBloc.add(const ClientSearchEvent.termChanged(term: term)))
          .called(1);
    });
  });
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
          child: const ClientSearchBarWidget(),
        ),
      ),
    );
  }
}
