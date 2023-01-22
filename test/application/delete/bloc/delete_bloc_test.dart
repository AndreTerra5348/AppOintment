import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_errors.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/client/client_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'delete_bloc_test.mocks.dart';
import '../../../common/failure_fixture.dart' as failure_fixture;

@GenerateMocks([ClientRepository])
void main() {
  late MockClientRepository repository;
  late Client johnClient;

  setUp(() {
    repository = MockClientRepository();
    johnClient = Client(name: Name('John'), id: Identifier.fromInt(1));
  });

  blocTest(
    "When [Event.deleted(id)] with invalid id "
    "Then [DeleteBloc<Client>] should throw [CriticalError]",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(DeleteEvent.deleted(id: Identifier())),
    errors: () => [isA<CriticalError>()],
  );

  blocTest(
    "When [Event.deleted(client)] with valid client "
    "Then [State] should be [inProgress()] ",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(id: johnClient.id),
    ),
    expect: () => [
      const DeleteState.inProgress(),
      const DeleteState.success(),
    ],
  );

  blocTest(
      "When [Event.deleted()] "
      "Then [Repository.delete()] should be called once ",
      setUp: () {
        when(repository.delete(any)).thenAnswer(
          (_) async => const Right(true),
        );
      },
      build: () => DeleteBloc<Client>(repository),
      act: (bloc) => bloc.add(DeleteEvent.deleted(id: johnClient.id)),
      verify: (_) => verify(repository.delete(any)).called(1));

  blocTest(
    "Given [Repository.delete()] returns [RepositoryFailure.dbException] "
    "Then [State.submissionStatus] should be [failure()] "
    "And [SubmissionFailure] should be [reposptory()] "
    "And [RpositoryFailure] should be [dbException()]",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Left(failure_fixture.dbErrorRepositoryFailure),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(id: johnClient.id),
    ),
    skip: 1,
    expect: () => [
      DeleteState.repositoryFailure(
        failure: failure_fixture.dbErrorRepositoryFailure,
      )
    ],
  );

  blocTest(
    "Given [Repository.delete()] returns false "
    "Then [State.submissionStatus] should be [failure()] "
    "And [SubmissionFailure] should be [reposptory()] "
    "And [RpositoryFailure] should be [notFound()] ",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Right(false),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(id: johnClient.id),
    ),
    skip: 1,
    expect: () => [
      DeleteState.notFoundFailure(),
    ],
  );
  blocTest(
    "Given [Repository.delete()] returns true "
    "Then [State.submissionStatus] should be [success()] ",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(id: johnClient.id),
    ),
    skip: 1,
    expect: () => [const DeleteState.success()],
  );
}
