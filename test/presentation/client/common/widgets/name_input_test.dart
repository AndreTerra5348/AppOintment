import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/presentation/client/common/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'name_input_test.mocks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

@GenerateMocks([ClientBloc])
void main() {
  // TODO: test decoration > labelText
  // TODO: test validator > failure
  group("NameInputWidget ", () {
    late MockClientBloc clientBloc;
    setUp(() {
      clientBloc = MockClientBloc();
      when(clientBloc.state).thenReturn(ClientState.initial());
      when(clientBloc.stream).thenAnswer((_) => const Stream.empty());
    });

    testWidgets("Render TextFormField", (tester) async {
      // Arrange
      await tester.pumpWidget(MockClientRegisterPage(bloc: clientBloc));

      // Act
      // Assert
      expect(find.byType(TextFormField), findsOneWidget);
    });

    testWidgets("Render nameTextFormField translation", (tester) async {
      // Arrange
      const text = '123';
      await tester.pumpWidget(MockClientRegisterPage(bloc: clientBloc));

      // Act
      await tester.enterText(find.byType(TextFormField), text);

      // Assert
      expect(find.text(AppLocalizationsEn().nameTextFormField), findsOneWidget);
    });

    testWidgets(
        "Should [ClientEvent.nameChanged(name)] "
        "When TextFormField value change", (WidgetTester tester) async {
      // Arrange
      const name = "Bob";

      await tester.pumpWidget(MockClientRegisterPage(bloc: clientBloc));
      await tester.pumpAndSettle();

      expect(find.byType(TextFormField), findsOneWidget);

      // Act
      await tester.enterText(find.byType(TextFormField), name);

      // Assert
      verify(clientBloc.add(const ClientEvent.nameChanged(name: name)))
          .called(1);
    });
  });
}

class MockClientRegisterPage extends StatelessWidget {
  final ClientBloc bloc;
  const MockClientRegisterPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: const MockClientRegisterFormWidget(),
        ),
      ),
    );
  }
}

class MockClientRegisterFormWidget extends StatelessWidget {
  const MockClientRegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Focus(child: NameInputWidget());
  }
}
