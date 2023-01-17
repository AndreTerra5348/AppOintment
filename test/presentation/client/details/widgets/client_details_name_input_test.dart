import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/presentation/client/common/widgets/client_name_form_field.dart';
import 'package:appointment/presentation/client/details/widgets/client_details_name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'client_details_name_input_test.mocks.dart';

@GenerateMocks([ClientBloc])
void main() {
  late MockClientBloc clientBloc;
  late MockPage mockPage;
  late Client client;
  const name = "Bob";
  setUp(() {
    client = Client(name: Name(name), id: Identifier.fromInt(1));
    clientBloc = MockClientBloc();
    when(clientBloc.state).thenReturn(ClientState.initial());
    when(clientBloc.stream).thenAnswer((_) => const Stream.empty());

    mockPage = MockPage(
      bloc: clientBloc,
      isEditing: true,
    );
  });

  testWidgets("Render NameFormField", (tester) async {
    // Arrange
    await tester.pumpWidget(mockPage);

    // Act
    // Assert
    expect(find.byType(NameFormField), findsOneWidget);
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
    mockPage = MockPage(
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
    mockPage = MockPage(
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
      "When NameFormField value change", (WidgetTester tester) async {
    // Arrange
    const name = "Bob";

    await tester.pumpWidget(mockPage);
    await tester.pumpAndSettle();

    expect(find.byType(NameFormField), findsOneWidget);

    // Act
    await tester.enterText(find.byType(NameFormField), name);

    // Assert
    verify(clientBloc.add(const ClientEvent.nameChanged(name: name))).called(1);
  });
}

class MockPage extends StatelessWidget {
  final ClientBloc bloc;
  final bool isEditing;
  const MockPage({super.key, required this.bloc, required this.isEditing});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: DetailsNameInputWidget(
            isEditing: isEditing,
          ),
        ),
      ),
    );
  }
}
