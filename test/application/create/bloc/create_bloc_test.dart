import 'package:appointment/application/client/create/client_create_validator.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_bloc_test.mocks.dart';
import '../../../common/failure_fixture.dart' as failure_fixture;

@GenerateMocks([Repository])
void main() {
  test("Initial state should be [State.initial()]", () {
    // Arrange
    final sut = CreateBloc(MockRepository<Client>(), ClientCreateValidator());

    // Act
    // Assert
    expect(sut.state, CreateState.initial());
  });

  group("Given [State.initial()]", () {
    late MockRepository<Client> repository;
    late ClientCreateValidator validator;
    late Client invalidClient;
    late Client validClient;

    setUp(() {
      invalidClient = Client.withoutIdentifier(name: Name(""));
      validClient = Client(name: Name("name"), id: Identifier.fromInt(1));
      repository = MockRepository<Client>();
      validator = ClientCreateValidator();
    });

    blocTest(
      "When [Event.submitted(client)] with invalid client"
      "Then [State.submissionStatus] is [failure()] "
      "And [SubmissionFailure] is [invalidFields()]",
      build: () => CreateBloc(repository, validator),
      act: (bloc) => bloc.add(CreateEvent.created(entity: invalidClient)),
      expect: () => [CreateState.invalidFieldFailure()],
    );

    blocTest(
      "When [Event.submitted(client)] with invalid client"
      "Then [State.submissionStatus] "
      "Then [Repository.insert()] should NOT be called",
      build: () => CreateBloc(repository, validator),
      act: (bloc) => bloc.add(CreateEvent.created(entity: invalidClient)),
      verify: (_) => verifyNever(repository.insert(invalidClient)),
    );

    blocTest(
      "When [Event.submitted()] with valid client "
      "Then [Repository.insert()] should be called once",
      setUp: () {
        when(repository.insert(any))
            .thenAnswer((_) async => right(validClient));
      },
      build: () => CreateBloc(repository, validator),
      act: (bloc) => bloc.add(CreateEvent.created(entity: validClient)),
      verify: (_) => verify(repository.insert(any)).called(1),
    );

    blocTest(
      "When [Repository.insert()] is called with valid client "
      "Then [State.submissionStatus] is [inProgress()] "
      "Then [State.submissionStatus] is [success()]",
      setUp: () {
        when(repository.insert(any))
            .thenAnswer((_) async => right(validClient));
      },
      build: () => CreateBloc(repository, validator),
      act: (bloc) => bloc.add(CreateEvent.created(entity: validClient)),
      expect: () => [
        CreateState.inProgress(),
        CreateState.success(),
      ],
    );

    blocTest(
      "When [Repository.insert()] is called with valid client "
      "Then [State.submissionStatus] is [failure()] "
      "And [SubmissionFailure] is [failure()] "
      "And [RepositoryFailure] is [dbException()]",
      setUp: () {
        when(repository.insert(any)).thenAnswer(
          (_) async => const Left(
            failure_fixture.dbErrorRepositoryFailure,
          ),
        );
      },
      build: () => CreateBloc(repository, validator),
      act: (bloc) => bloc.add(CreateEvent.created(entity: validClient)),
      skip: 1,
      expect: () => [
        CreateState.repositoryFailure(
          failure: failure_fixture.dbErrorRepositoryFailure,
        ),
      ],
    );
  });
}
