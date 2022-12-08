import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
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
  late MockClientBloc clientBloc;
  late MockClientRegisterPage mockPage;
  late Client client;
  const name = "Bob";
  setUp(() {
    client = Client(name: Name(name), id: Uid.fromInt(1));
    clientBloc = MockClientBloc();
    when(clientBloc.state).thenReturn(ClientState.initial());
    when(clientBloc.stream).thenAnswer((_) => const Stream.empty());

    mockPage = MockClientRegisterPage(
      bloc: clientBloc,
      isEditing: true,
    );
  });

  testWidgets("Render TextFormField", (tester) async {
    // Arrange
    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byType(TextFormField), findsOneWidget);
  });

  testWidgets("Render nameTextFormField translation", (tester) async {
    // Arrange
    const text = '123';
    await tester.pumpWidget(mockPage);

    // Act
    await tester.enterText(find.byType(TextFormField), text);

    // Assert
    expect(find.text(AppLocalizationsEn().nameTextFormField), findsOneWidget);
  });

  testWidgets(
      "Given initial state "
      "When ClientState.client is valid "
      "Render name as initial value", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));

    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.text(name), findsOneWidget);
  });

  testWidgets(
      "When isEditing is false "
      "Key should be client name", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));
    mockPage = MockClientRegisterPage(
      bloc: clientBloc,
      isEditing: false,
    );

    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byKey(const Key(name)), findsOneWidget);
  });

  testWidgets(
      "When isEditing is true "
      "Key should be null", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));
    mockPage = MockClientRegisterPage(
      bloc: clientBloc,
      isEditing: true,
    );

    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byKey(const Key(name)), findsNothing);
  });

  testWidgets(
      "Should [ClientEvent.nameChanged(name)] "
      "When TextFormField value change", (WidgetTester tester) async {
    // Arrange
    const name = "Bob";

    await tester.pumpWidget(mockPage);
    await tester.pumpAndSettle();

    expect(find.byType(TextFormField), findsOneWidget);

    // Act
    await tester.enterText(find.byType(TextFormField), name);

    // Assert
    verify(clientBloc.add(const ClientEvent.nameChanged(name: name))).called(1);
  });
}

class MockClientRegisterPage extends StatelessWidget {
  final ClientBloc bloc;
  final bool isEditing;
  const MockClientRegisterPage(
      {super.key, required this.bloc, required this.isEditing});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: NameInputWidget(
            isEditing: isEditing,
          ),
        ),
      ),
    );
  }
}
