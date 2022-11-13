import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/presentation/client/register/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'name_input_test.mocks.dart';

@GenerateMocks([ClientRegisterBloc])
void main() {
  group("ClientRegisterFormWidget", () {
    testWidgets("Should have a [Form] and a [ElevatedButton]", (tester) async {
      // Arrange
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(ClientRegisterState.initial());
      when(mockBloc.stream)
          .thenAnswer((realInvocation) => const Stream.empty());

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));

      await tester.pumpAndSettle();

      // Act

      // Assert
      expect(find.byType(Form), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets(
        "Should Add [Submitted] event to bloc when [Form] is valid and [ElevatedButton] is tapped",
        (tester) async {
      // Arrange
      const name = "Bob";
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(
        ClientRegisterState.initial().copyWith(
          form: ClientRegisterForm.initial().copyWith(
            name: Name(name),
          ),
        ),
      );
      when(mockBloc.stream)
          .thenAnswer((realInvocation) => const Stream.empty());

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));

      await tester.pumpAndSettle();

      // Act
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Assert
      verify(mockBloc.add(const ClientRegisterEvent.submitted())).called(1);
    });

    testWidgets(
        "Show error message when [ClientRegisterForm] submissionStatus is failure because of invalid fileds",
        (tester) async {
      // Arrange
      final mockBloc = MockClientRegisterBloc();
      final state = ClientRegisterState.initial().copyWithFailure(
        failure: const BlocFailure.repository(
          failure: RepositoryFailure.dbException(error: ""),
        ),
      );
      when(mockBloc.state).thenReturn(state);
      when(mockBloc.stream).thenAnswer((realInvocation) => Stream.value(state));

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));
      await tester.pumpAndSettle();

      // Act

      // Assert
      expect(find.text("Name cannot be empty"), findsOneWidget);
    });

    testWidgets(
        "Should show [ProgressIndicator] when [ClientRegisterForm] submissionStatus is inProgress",
        (tester) async {
      // Arrange
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(ClientRegisterState.initial().copyWith(
        form: ClientRegisterForm.initial().copyWith(
          submissionStatus: FormSubmissionStatus.inProgress,
        ),
      ));
      when(mockBloc.stream)
          .thenAnswer((realInvocation) => const Stream.empty());

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));

      // Act

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        "Should NOT show [ProgressIndicator] when [ClientRegisterForm] submissionStatus is NOT inProgress",
        (tester) async {
      // Arrange
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(ClientRegisterState.initial().copyWith(
        form: ClientRegisterForm.initial().copyWith(
          submissionStatus: FormSubmissionStatus.initial,
        ),
      ));
      when(mockBloc.stream)
          .thenAnswer((realInvocation) => const Stream.empty());

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));

      // Act

      // Assert
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });

    testWidgets(
        "Should show [Icons.check_circle_outline] when [ClientRegisterForm] submissionStatus is success",
        (tester) async {
      // Arrange
      final state = ClientRegisterState.initial().copyWith(
        form: ClientRegisterForm.initial().copyWith(
          submissionStatus: FormSubmissionStatus.success,
        ),
      );
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(state);
      when(mockBloc.stream).thenAnswer((realInvocation) => Stream.value(state));

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));
      await tester.pump();

      // Act

      // Assert
      expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);
    });
  });
}

class MockClientPage extends StatelessWidget {
  final ClientRegisterBloc bloc;
  const MockClientPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) => bloc,
          child: const ClientRegisterFormWidget(),
        ),
      ),
    );
  }
}
