import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

void main() {
  group("Client Form Bloc", () {
    group("Initial values", initialValuesTests);
    group("States", statesTests);
  });
}

void initialValuesTests() {
  test("initial state should be initial", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state, ClientRegisterState.initial());
  });

  test("initial state Name should be empty", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.nameInput.value, Name.empty());
  });

  test("initial nameInput status should be pure", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.nameInput.status, FormzInputStatus.pure);
  });
}

void statesTests() {
  const name = "Bob";
  blocTest<ClientRegisterBloc, ClientRegisterState>(
    'Should change [ClientRegisterState] name when ClientFormEvent.nameChanged is added',
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    verify: (bloc) => expect(bloc.state.form.nameInput.value, Name(name)),
  );

  blocTest(
    "Should nameInput status be pure when ClientFormEvent.nameChanged is added",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    verify: (bloc) =>
        expect(bloc.state.form.nameInput.status, FormzInputStatus.pure),
  );
}
