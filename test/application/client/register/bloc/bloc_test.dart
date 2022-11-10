import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client Register Form Bloc -", () {
    group("Initial values -", initialValuesTests);
    group("Events -", statesTests);
  });
}

void initialValuesTests() {
  test("initial state should be [ClientRegisterState] initial", () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state, ClientRegisterState.initial());
  });

  test(
      "initial [ClientRegisterForm] name value should be of type Left<StringFailure, String>",
      () {
    // Arrange
    final sut = ClientRegisterBloc();

    // Act

    // Assert
    expect(sut.state.form.name.value, isA<Left<StringFailure, String>>());
  });

  test("initial [ClientRegisterForm] submissionStatus should be initial", () {
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
    """emit [ClientRegisterState] with FormSubmissionStatus equal to initial and 
    Name equal to receveid name when [nameChanged] event is added with valid name""",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    expect: () => [
      ClientRegisterState(
        form: ClientRegisterForm(
            name: Name(name), submissionStatus: FormSubmissionStatus.initial),
      )
    ],
  );

  blocTest(
    """[ClientRegisterForm] submissionStatus Should be failure 
    when [Submitted] event is added with invalid name""",
    build: () => ClientRegisterBloc(),
    act: (bloc) => bloc.add(const ClientRegisterEvent.submitted()),
    expect: () => [
      ClientRegisterState(
        form: ClientRegisterForm(
            name: Name(''), submissionStatus: FormSubmissionStatus.failure),
      )
    ],
  );

  blocTest(
    """[ClientRegisterForm] submissionStatus Should be inProgress 
    when [Submitted] event is added with valid name""",
    build: () => ClientRegisterBloc(),
    act: (bloc) {
      bloc.add(const ClientRegisterEvent.nameChanged(name: name));
      bloc.add(const ClientRegisterEvent.submitted());
    },
    expect: () => [
      ClientRegisterState(
        form: ClientRegisterForm.initial().copyWith(name: Name(name)),
      ),
      ClientRegisterState(
        form: ClientRegisterForm(
            name: Name(name),
            submissionStatus: FormSubmissionStatus.inProgress),
      )
    ],
  );
}
