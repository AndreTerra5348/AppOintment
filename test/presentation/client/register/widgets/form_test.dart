import 'package:appointment/application/client/register/bloc/bloc.dart';
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
    testWidgets("Should have a Form and a ElevatedButton", (tester) async {
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

    testWidgets("Should Add [Submitted] event to bloc", (tester) async {
      // Arrange
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(ClientRegisterState.initial());
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
