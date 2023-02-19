import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/presentation/client/common/widgets/client_name_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'client_name_form_field_test.mocks.dart';

@GenerateMocks([ClientBloc])
void main() {
  late MockClientBloc clientBloc;
  late Client client;
  const name = "Bob";
  setUp(() {
    client = Client(name: Name(name), id: Identifier.fromInt(1));
    clientBloc = MockClientBloc();
    when(clientBloc.state).thenReturn(ClientState.initial());
    when(clientBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  testWidgets("Render nameTextFormField translation", (tester) async {
    // Arrange
    const text = '123';
    await tester.pumpWidget(
      MockClientCreatePage(
        bloc: clientBloc,
      ),
    );

    // Act
    await tester.enterText(find.byType(NameFormField), text);

    // Assert
    expect(find.text(AppLocalizationsEn().nameTextFormField), findsOneWidget);
  });

  testWidgets(
      "Given isEditing true "
      "Render entered text", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));

    await tester.pumpWidget(
      MockClientCreatePage(
        bloc: clientBloc,
        isEditing: true,
      ),
    );

    // Act
    await tester.enterText(find.byType(NameFormField), name);

    // Assert
    expect(find.text(name), findsOneWidget);
  });

  testWidgets(
      "Given isEditing false "
      "Should Not render entered text", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));

    await tester.pumpWidget(
      MockClientCreatePage(
        bloc: clientBloc,
        isEditing: false,
      ),
    );

    // Act
    await tester.enterText(find.byType(NameFormField), name);

    // Assert
    expect(find.text(name), findsNothing);
  });

  testWidgets(
      "Given initialValue is text "
      "Render text", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));

    await tester.pumpWidget(
      MockClientCreatePage(
        bloc: clientBloc,
        initialValue: name,
      ),
    );

    // Act
    // Assert
    expect(find.text(name), findsOneWidget);
  });

  testWidgets(
      "Given entered text "
      "Add [ClientEvent.nameChanged(text)] ", (WidgetTester tester) async {
    // Arrange
    when(clientBloc.state).thenReturn(ClientState(client: client));

    await tester.pumpWidget(
      MockClientCreatePage(
        bloc: clientBloc,
        isEditing: true,
      ),
    );

    // Act
    await tester.enterText(find.byType(NameFormField), name);

    // Assert
    verify(
      clientBloc.add(
        const ClientEvent.nameChanged(name: name),
      ),
    );
  });
}

class MockClientCreatePage extends StatelessWidget {
  final ClientBloc bloc;
  final bool isEditing;
  final String? initialValue;
  const MockClientCreatePage(
      {super.key,
      required this.bloc,
      this.isEditing = false,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: InputWidget(isEditing: isEditing, initialValue: initialValue),
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.isEditing,
    required this.initialValue,
  }) : super(key: key);

  final bool isEditing;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientBloc, ClientState>(
      builder: (context, state) {
        return NameFormField(
          enabled: isEditing,
          initialValue: initialValue,
          context: context,
        );
      },
    );
  }
}
