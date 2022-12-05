import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/register/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/presentation/client/register/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

import '../../../../common/failure_fixture.dart' as failure_fixture;
import 'form_test.mocks.dart';

@GenerateMocks([RegisterBloc, ClientBloc])
void main() {
  group("ClientRegisterFormWidget", () {
    late MockClientBloc clientBloc;
    late MockRegisterBloc<Client> registerBloc;
    late MockClientRegisterPage mockPage;
    setUp(() {
      clientBloc = MockClientBloc();
      when(clientBloc.state).thenReturn(ClientState.initial());
      when(clientBloc.stream).thenAnswer((_) => const Stream.empty());

      registerBloc = MockRegisterBloc<Client>();
      when(registerBloc.state).thenReturn(RegisterState.initial());
      when(registerBloc.stream).thenAnswer((_) => const Stream.empty());

      mockPage = MockClientRegisterPage(
        registerBloc: registerBloc,
        clientBloc: clientBloc,
        child: const ClientRegisterFormWidget(),
      );
    });
    testWidgets("Render [Form]", (tester) async {
      // Arrange
      await tester.pumpWidget(mockPage);

      // Act
      // Assert
      expect(find.byType(Form), findsOneWidget);
    });

    testWidgets("Render Submit ElevatedButton", (tester) async {
      // Arrange
      await tester.pumpWidget(mockPage);

      // Act
      // Assert
      expect(
        find.widgetWithIcon(ElevatedButton, Icons.add_circle),
        findsOneWidget,
      );
    });

    testWidgets(
        "Add [ClientRegisterEvent.submitted()] "
        "when Submit ElevatedButton is pressed", (tester) async {
      // Arrange
      final client = ClientState.initial().client;
      await tester.pumpWidget(mockPage);

      // Act
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Assert
      verify(
        registerBloc.add(
          RegisterEvent<Client>.registered(
            entity: client,
          ),
        ),
      ).called(1);
    });

    testWidgets(
        "Show [Icons.error_outline] for 1 second"
        "When [ClientRegisterState.submissionStatus] is [failure()] ",
        (tester) async {
      // Arrange
      final state = RegisterState.invalidFieldFailure();
      when(registerBloc.state).thenReturn(state);
      when(registerBloc.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(mockPage);
      await tester.pump();

      // Act
      // Assert
      expect(find.byIcon(Icons.error_outline), findsOneWidget);

      await tester.pump(const Duration(seconds: 1));

      expect(find.byIcon(Icons.error_outline), findsNothing);
    });

    testWidgets(
        "Show emptyNameFailure translation message"
        "When [ClientRegisterState.submissionStatus] is [failure()] "
        "And [ClientRegisterState.failure] is [emptyNameFailure()]",
        (tester) async {
      // Arrange
      final state = RegisterState.invalidFieldFailure();
      when(registerBloc.state).thenReturn(state);
      when(registerBloc.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(mockPage);
      await tester.pump();

      // Act
      // Assert
      expect(
        find.text(AppLocalizationsEn().emptyNameFailure),
        findsOneWidget,
      );
    });

    testWidgets(
        "Show error [dbErrorMessage] translation message "
        "When [ClientRegisterState.submissionStatus] is [failure()] "
        "And [SubmissionFailure] is [repository()] "
        "And [RepositoryFailure] is [dbException()]", (tester) async {
      // Arrange
      final state = RegisterState.repositoryFailure(
          failure: failure_fixture.dbErrorRepositoryFailure);
      when(registerBloc.state).thenReturn(state);
      when(registerBloc.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(mockPage);
      await tester.pump();

      // Act
      // Assert
      expect(
        find.text(failure_fixture.dbErrorLocalizedMessage),
        findsOneWidget,
      );
    });

    testWidgets(
        "Show [CircularProgressIndicator] "
        "When [ClientRegisterState.submissionStatus] is [inProgress()]",
        (tester) async {
      // Arrange
      when(registerBloc.state).thenReturn(RegisterState.inProgress());

      await tester.pumpWidget(mockPage);

      // Act
      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        "NOT show [CircularProgressIndicator] "
        "When [ClientRegisterState.submissionStatus] is NOT [inProgress()]",
        (tester) async {
      // Arrange
      await tester.pumpWidget(mockPage);

      // Act
      // Assert
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets(
        "Show [Icons.check_circle_outline] for 1 second"
        "When [ClientRegisterState.submissionStatus] is [success()]",
        (tester) async {
      // Arrange
      final state = RegisterState.success();
      when(registerBloc.state).thenReturn(state);
      when(registerBloc.stream).thenAnswer((_) => Stream.value(state));

      await tester.pumpWidget(mockPage);
      await tester.pump();

      // Act
      // Assert
      expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);

      await tester.pump(const Duration(seconds: 1));

      expect(find.byIcon(Icons.check_circle_outline), findsNothing);
    });
  });
}

class MockClientRegisterPage extends StatelessWidget {
  final RegisterBloc<Client> registerBloc;
  final ClientBloc clientBloc;
  final Widget child;
  const MockClientRegisterPage({
    super.key,
    required this.registerBloc,
    required this.clientBloc,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => clientBloc,
              ),
              BlocProvider(
                create: (context) => registerBloc,
              ),
            ],
            child: child,
          ),
        ));
  }
}
