import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/di.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'bloc_test.mocks.dart';

@GenerateMocks([ClientRepository])
void main() {
  group("Client Register Form Bloc -", () {
    setUp(() => servicesConfiguration);
    group("Initial values -", initialValuesTests);
    group("Events -", statesTests);
    group("ClientRepository -", repositoryTests);
  });
}

void initialValuesTests() {
  test("initial state should be [ClientRegisterState] initial", () {
    // Arrange
    final sut = ClientRegisterBloc(MockClientRepository());

    // Act

    // Assert
    expect(sut.state, ClientRegisterState.initial());
  });

  test(
      "initial [ClientRegisterForm] name value should be of type Left<StringFailure, String>",
      () {
    // Arrange
    final sut = ClientRegisterBloc(MockClientRepository());

    // Act

    // Assert
    expect(sut.state.form.name.value, isA<Left<StringFailure, String>>());
  });

  test("initial [ClientRegisterForm] submissionStatus should be initial", () {
    // Arrange
    final sut = ClientRegisterBloc(MockClientRepository());

    // Act

    // Assert
    expect(sut.state.form.submissionStatus, const SubmissionStatus.initial());
  });
}

void statesTests() {
  const name = "Bob";
  blocTest(
    """emit [ClientRegisterState] with FormSubmissionStatus equal to initial and 
    Name equal to receveid name when [nameChanged] event is added with valid name""",
    build: () => ClientRegisterBloc(MockClientRepository()),
    act: (bloc) => bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
    expect: () => [
      ClientRegisterState(
        form: ClientRegisterForm(
            name: Name(name),
            submissionStatus: const SubmissionStatus.initial()),
      )
    ],
  );

  blocTest(
    """[ClientRegisterForm] submissionStatus Should be 
    SubmissionStatus.failure(SubmissionFailure.invalidField())
    when [Submitted] event is added with invalid name""",
    build: () => ClientRegisterBloc(MockClientRepository()),
    act: (bloc) => bloc.add(const ClientRegisterEvent.submitted()),
    expect: () => [
      ClientRegisterState(
        form: ClientRegisterForm(
          name: Name(''),
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.invalidField(),
          ),
        ),
      )
    ],
  );
}

void repositoryTests() {
  const name = "Bob";
  late MockClientRepository repository;

  blocTest(
    """Should call [Repository] insert when [Submitted] event is added with valid name""",
    setUp: () {
      repository = MockClientRepository();
      when(repository.insert(any)).thenAnswer((realInvocation) => Future.value(
            const Left(RepositoryFailure.dbException(error: "")),
          ));
    },
    build: () => ClientRegisterBloc(repository),
    act: (bloc) {
      bloc.add(const ClientRegisterEvent.nameChanged(name: name));
      bloc.add(const ClientRegisterEvent.submitted());
    },
    verify: (bloc) {
      verify(repository.insert(any)).called(1);
    },
  );

  blocTest(
    """Should NOT call [Repository] insert when [Submitted] event is added with invalid name""",
    setUp: () {
      repository = MockClientRepository();
      when(repository.insert(any)).thenAnswer((realInvocation) => Future.value(
            const Left(RepositoryFailure.dbException(error: "")),
          ));
    },
    build: () => ClientRegisterBloc(repository),
    act: (bloc) {
      bloc.add(const ClientRegisterEvent.nameChanged(name: ""));
      bloc.add(const ClientRegisterEvent.submitted());
    },
    verify: (bloc) {
      verifyNever(repository.insert(any));
    },
  );

  blocTest(
    """[ClientRegisterForm] submissionStatus Should be inProgress then success with empty name
    when [Submitted] event is added with valid name and repository DO NOT return any error""",
    setUp: () {
      repository = MockClientRepository();
      when(repository.insert(any)).thenAnswer((realInvocation) => Future.value(
            Right(Client.withoutUid(name: Name(name))),
          ));
    },
    build: () => ClientRegisterBloc(repository),
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
            submissionStatus: const SubmissionStatus.inProgress()),
      ),
      ClientRegisterState(
        form: ClientRegisterForm(
            name: Name(""), submissionStatus: const SubmissionStatus.success()),
      ),
    ],
  );

  const dbErrorMessage = "Error";
  const repositoryFailure =
      RepositoryFailure.dbException(error: dbErrorMessage);
  blocTest(
    """[ClientRegisterForm] submissionStatus Should be SubmissionStatus.inProgress()
    then failure SubmissionStatus.failure(SubmissionFailure
    .repository(RepositoryFailure.dbException(error: dbErrorMessage)))
    when [Submitted] event is added with valid name and repository returns any error""",
    setUp: () {
      repository = MockClientRepository();
      when(repository.insert(any)).thenAnswer((realInvocation) => Future.value(
            const Left(repositoryFailure),
          ));
    },
    build: () => ClientRegisterBloc(repository),
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
            submissionStatus: const SubmissionStatus.inProgress()),
      ),
      ClientRegisterState(
        form: ClientRegisterForm(
          name: Name(name),
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.repository(failure: repositoryFailure),
          ),
        ),
      ),
    ],
  );
}
