import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

void main() {
  group("Client Register Form Bloc", () {
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

  test("initial nameInput value should be of type Left<StringFailure, String>",
      () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.nameInput.value.value,
        isA<Left<StringFailure, String>>());
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

  blocTest(
    "Should nameInput status be invalid when ClientFormEvent.nameUnfocused is added with empty name",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameUnfocused()),
    verify: (bloc) =>
        expect(bloc.state.form.nameInput.status, FormzInputStatus.invalid),
  );
}
