import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/common/form_submission_status.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Register Form Bloc", () {
    group("Initial values", initialValuesTests);
    group("Events", statesTests);
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

  test("initial form name value should be of type Left<StringFailure, String>",
      () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.name.value, isA<Left<StringFailure, String>>());
  });

  test("initial form status should be initial", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.status, FormSubmissionStatus.initial);
  });
}

void statesTests() {
  const name = "Bob";
  blocTest(
    "Should name value be Right(value) when ClientFormEvent.nameChanged is added",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    verify: (bloc) => expect(bloc.state.form.name.value, const Right(name)),
  );
}
