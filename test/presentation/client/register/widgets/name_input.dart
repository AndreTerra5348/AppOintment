import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/presentation/client/register/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'name_input.mocks.dart';

@GenerateMocks([ClientRegisterBloc])
void main() {
  group("Name input widget", () {
    testWidgets("name TextFormField should add nameChanged event to bloc",
        (WidgetTester tester) async {
      // Arrange
      const name = "Bob";
      final mockBloc = MockClientRegisterBloc();
      when(mockBloc.state).thenReturn(ClientRegisterState.initial());
      when(mockBloc.stream)
          .thenAnswer((realInvocation) => const Stream.empty());

      await tester.pumpWidget(MockClientPage(bloc: mockBloc));
      await tester.pumpAndSettle();

      expect(find.byKey(NameInputWidget.nameTextFormKey), findsOneWidget);

      // Act
      await tester.enterText(find.byKey(NameInputWidget.nameTextFormKey), name);

      // // Assert
      verify(mockBloc.add(any)).called(1);
    });
  });
}

class MockApp extends StatelessWidget {
  const MockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
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
          child: const MockClientRegisterWidget(),
        ),
      ),
    );
  }
}

class MockClientRegisterWidget extends StatelessWidget {
  const MockClientRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const NameInputWidget();
  }
}
