import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/client/values.dart';
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

  test("initial form submissionStatus should be initial", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.submissionStatus, FormSubmissionStatus.initial);
  });
}

void statesTests() {
  const name = "Bob";
  blocTest(
    "Should name value be Right(value) when [nameChanged] event is added with valid name",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    verify: (bloc) => expect(bloc.state.form.name.value, const Right(name)),
  );

  blocTest(
    "Should name value be Left(StringFailure.empty) when [nameChanged] event is added with empty name",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: "")),
    verify: (bloc) =>
        expect(bloc.state.form.name.value, const Left(StringFailure.empty())),
  );

  blocTest(
    "Should form submissionStatus be initial when [nameChanged] event is first added",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    verify: (bloc) =>
        expect(bloc.state.form.submissionStatus, FormSubmissionStatus.initial),
  );
}
