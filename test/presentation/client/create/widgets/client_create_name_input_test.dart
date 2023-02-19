import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/presentation/client/common/widgets/client_name_form_field.dart';
import 'package:appointment/presentation/client/create/widgets/client_create_name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'client_create_name_input_test.mocks.dart';

@GenerateMocks([ClientBloc])
void main() {
  late MockClientBloc clientBloc;
  late MockPage mockPage;
  setUp(() {
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
          child: const CreateNameInputWidget(),
        ),
      ),
    );
  }
}
