import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/failures.dart';
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
    test(
        "initial state "
        "should be [ClientRegisterState.initial()]", () {
      // Arrange
      final sut = ClientRegisterBloc(MockClientRepository());

      // Act

      // Assert
      expect(sut.state, ClientRegisterState.initial());
    });

    test(
        "initial [ClientRegisterForm] name value "
        "should be of type [Left<StringFailure, String>]", () {
      // Arrange
      final sut = ClientRegisterBloc(MockClientRepository());

      // Act

      // Assert
      expect(sut.state.name.value, isA<Left<StringFailure, String>>());
    });

    test(
        "initial [ClientRegisterForm] submissionStatus "
        "should be [ClientRegisterForm.initial()]", () {
      // Arrange
      final sut = ClientRegisterBloc(MockClientRepository());

      // Act

      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });
    const name = "Bob";
    blocTest(
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.nameChanged('Bob')] is added "
      "Then [ClientRegisterState.name] should be [Name('Bob')]"
      "And [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.initial()]",
      build: () => ClientRegisterBloc(MockClientRepository()),
      act: (bloc) =>
          bloc.add(const ClientRegisterEvent.nameChanged(name: name)),
      expect: () => [
        ClientRegisterState(
          name: Name(name),
          submissionStatus: const SubmissionStatus.initial(),
        )
      ],
    );

    blocTest(
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.submitted()] is added with invalid name"
      "Then [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.invalidField()]",
      build: () => ClientRegisterBloc(MockClientRepository()),
      act: (bloc) => bloc.add(const ClientRegisterEvent.submitted()),
      expect: () => [
        ClientRegisterState(
          name: Name(''),
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.invalidFields(),
          ),
        )
      ],
    );
    late MockClientRepository repository;

    blocTest(
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.nameChanged('Bob')] "
      "And [ClientRegisterEvent.submitted()] is added "
      "Then [Repository.insert()] should be called once",
      setUp: () {
        repository = MockClientRepository();
        when(repository.insert(any)).thenAnswer((_) => Future.value(
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
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.submitted()] is added with invalid name"
      "Then [Repository.insert()] should not be called",
      setUp: () {
        repository = MockClientRepository();
        when(repository.insert(any)).thenAnswer((_) => Future.value(
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
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.submitted()] is added with valid name"
      "And [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.inProgress()]"
      "Then [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.success()]",
      setUp: () {
        repository = MockClientRepository();
        when(repository.insert(any)).thenAnswer((_) => Future.value(
              Right(Client.withoutUid(name: Name(name))),
            ));
      },
      build: () => ClientRegisterBloc(repository),
      act: (bloc) {
        bloc.add(const ClientRegisterEvent.nameChanged(name: name));
        bloc.add(const ClientRegisterEvent.submitted());
      },
      expect: () => [
        ClientRegisterState.initial().copyWith(name: Name(name)),
        ClientRegisterState(
          name: Name(name),
          submissionStatus: const SubmissionStatus.inProgress(),
        ),
        ClientRegisterState(
          name: Name(""),
          submissionStatus: const SubmissionStatus.success(),
        ),
      ],
    );

    const dbErrorMessage = "Error";
    const repositoryFailure =
        RepositoryFailure.dbException(error: dbErrorMessage);
    blocTest(
      "Given [ClientRegisterState.initial()] "
      "When [ClientRegisterEvent.submitted()] is added with valid name"
      "And [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.inProgress()]"
      "Then [ClientRegisterState.submissionStatus] "
      "should be [SubmissionStatus.failure()] when DB throws error",
      setUp: () {
        repository = MockClientRepository();
        when(repository.insert(any)).thenAnswer((_) => Future.value(
              const Left(repositoryFailure),
            ));
      },
      build: () => ClientRegisterBloc(repository),
      act: (bloc) {
        bloc.add(const ClientRegisterEvent.nameChanged(name: name));
        bloc.add(const ClientRegisterEvent.submitted());
      },
      expect: () => [
        ClientRegisterState.initial().copyWith(name: Name(name)),
        ClientRegisterState(
          name: Name(name),
          submissionStatus: const SubmissionStatus.inProgress(),
        ),
        ClientRegisterState(
          name: Name(name),
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.repository(failure: repositoryFailure),
          ),
        ),
      ],
    );
  });
}
