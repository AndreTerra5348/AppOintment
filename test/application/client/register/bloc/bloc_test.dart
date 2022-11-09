import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Form Bloc", () {
    test("initial state should be ClientFormState", () {
      // Arrange
      final sut = ClientRegisterBloc();

      // Act

      // Assert
      expect(sut.state, isA<ClientRegisterState>());
    });

    test("initial state Name should be empty", () {
      // Arrange
      final sut = ClientRegisterBloc();

      // Act

      // Assert
      expect(sut.state.clientRegisterForm.nameInput.value, Name.empty());
    });

    const name = "Bob";
    blocTest<ClientRegisterBloc, ClientRegisterState>(
        'emits [Name] when ClientFormEvent.nameChanged is added',
        build: () => ClientRegisterBloc(),
        act: (bloc) =>
            bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
        verify: ((bloc) {
          expect(bloc.state.clientRegisterForm.nameInput.value, Name(name));
        }));
  });
}
