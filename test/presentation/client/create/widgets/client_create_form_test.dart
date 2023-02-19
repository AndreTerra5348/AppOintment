import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/presentation/client/common/widgets/client_name_form_field.dart';
import 'package:appointment/presentation/client/register/widgets/client_create_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

import '../../../../common/failure_fixture.dart' as failure_fixture;
import 'client_create_form_test.mocks.dart';

@GenerateMocks([CreateBloc, ClientBloc])
void main() {
  late MockClientBloc clientBloc;
  late MockCreateBloc<Client> createBloc;
  late MockClientCreatePage mockPage;
  setUp(() {
    clientBloc = MockClientBloc();
    when(clientBloc.state).thenReturn(ClientState.initial());
    when(clientBloc.stream).thenAnswer((_) => const Stream.empty());

    createBloc = MockCreateBloc<Client>();
    when(createBloc.state).thenReturn(CreateState.initial());
    when(createBloc.stream).thenAnswer((_) => const Stream.empty());

    mockPage = MockClientCreatePage(
      registerBloc: createBloc,
      clientBloc: clientBloc,
      child: const ClientCreateFormWidget(),
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
      "Add [CreateEvent.submitted()] "
      "when Submit ElevatedButton is pressed", (tester) async {
    // Arrange
    final client = ClientState.initial().client;
    await tester.pumpWidget(mockPage);

    // Act
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Assert
    verify(
      createBloc.add(
        CreateEvent<Client>.created(
          entity: client,
        ),
      ),
    ).called(1);
  });

  testWidgets(
      "Show [Icons.error_outline] for 1 second"
      "When [CreateState.submissionStatus] is [failure()] ", (tester) async {
    // Arrange
    final state = CreateState.invalidFieldFailure();
    when(createBloc.state).thenReturn(state);
    when(createBloc.stream).thenAnswer((_) => Stream.value(state));

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
      "When [CreateState.submissionStatus] is [failure()] "
      "And [CreateState.failure] is [emptyNameFailure()]", (tester) async {
    // Arrange
    final state = CreateState.invalidFieldFailure();
    when(createBloc.state).thenReturn(state);
    when(createBloc.stream).thenAnswer((_) => Stream.value(state));

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
      "When [CreateState.submissionStatus] is [failure()] "
      "And [SubmissionFailure] is [repository()] "
      "And [RepositoryFailure] is [dbException()]", (tester) async {
    // Arrange
    final state = CreateState.repositoryFailure(
        failure: failure_fixture.dbErrorRepositoryFailure);
    when(createBloc.state).thenReturn(state);
    when(createBloc.stream).thenAnswer((_) => Stream.value(state));

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
      "When [CreateState.submissionStatus] is [inProgress()]", (tester) async {
    // Arrange
    when(createBloc.state).thenReturn(CreateState.inProgress());

    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets(
      "NOT show [CircularProgressIndicator] "
      "When [CreateState.submissionStatus] is NOT [inProgress()]",
      (tester) async {
    // Arrange
    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets(
      "Show [Icons.check_circle_outline] for 1 second"
      "When [CreateState.submissionStatus] is [success()]", (tester) async {
    // Arrange
    final state = CreateState.success();
    when(createBloc.state).thenReturn(state);
    when(createBloc.stream).thenAnswer((_) => Stream.value(state));

    await tester.pumpWidget(mockPage);
    await tester.pump();

    // Act
    // Assert
    expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));

    expect(find.byIcon(Icons.check_circle_outline), findsNothing);
  });

  testWidgets(
      "Add [ClientEvent.loaded(ClientState.initial().client)] "
      "When [CreateState.submissionStatus] is [success()]", (tester) async {
    // Arrange
    final state = CreateState.success();
    when(createBloc.state).thenReturn(state);
    when(createBloc.stream).thenAnswer((_) => Stream.value(state));
    await tester.pumpWidget(mockPage);

    // Act
    await tester.enterText(find.byType(NameFormField), 'test');

    // Assert
    verify(
      clientBloc.add(
        ClientEvent.loaded(client: ClientState.initial().client),
      ),
    ).called(1);
  });

  testWidgets(
      "Should all [NameFormField] initialValue be empty "
      "When [CreateState.submissionStatus] is [success()]", (tester) async {
    // Arrange
    when(createBloc.state).thenReturn(CreateState.success());
    when(createBloc.stream)
        .thenAnswer((_) => Stream.value(CreateState.success()));
    when(clientBloc.state).thenReturn(ClientState.initial());
    when(clientBloc.stream)
        .thenAnswer((_) => Stream.value(ClientState.initial()));

    await tester.pumpWidget(mockPage);

    // Act
    await tester.enterText(find.byType(NameFormField), 'test');

    expect(find.byType(NameFormField), findsNWidgets(1));
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is NameFormField &&
            (widget.initialValue == null || widget.initialValue!.isEmpty),
      ),
      findsNWidgets(1),
    );
  });
}

class MockClientCreatePage extends StatelessWidget {
  final CreateBloc<Client> registerBloc;
  final ClientBloc clientBloc;
  final Widget child;
  const MockClientCreatePage({
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
