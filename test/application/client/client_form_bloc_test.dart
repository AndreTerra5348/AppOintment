import 'package:appointment/application/client/bloc/client_form_bloc.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Form Bloc", () {
    test("initial state should be ClientFormState", () {
      // Arrange
      final sut = ClientFormBloc();

      // Assert
      expect(sut.state, isA<ClientFormState>());
    });

    test("initial state Name should be empty", () {
      // Arrange
      final sut = ClientFormBloc();

      // Assert
      expect(sut.state.name, Name.empty());
    });

    const name = "Bob";
    blocTest<ClientFormBloc, ClientFormState>(
      'emits [Name] when ClientFormEvent.nameChanged is added',
      build: () => ClientFormBloc(),
      act: (bloc) => bloc.add(const ClientFormEvent.nameChanged(name: name)),
      expect: () => [ClientFormState(name: Name(name))],
    );
  });
}
