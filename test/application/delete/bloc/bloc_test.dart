import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'bloc_test.mocks.dart';
import '../../../common/mock_submission_failure.dart' as mock_failure;

@GenerateMocks([ClientRepository])
void main() {
  late MockClientRepository repository;
  late Client johnClient;

  setUp(() {
    repository = MockClientRepository();
    johnClient = Client(name: Name('John'), id: Uid.fromInt(1));
  });

  blocTest(
    "When [Event.deleted(client)] with invalid client "
    "Then [DeleteBloc<Client>] should throw [CriticalError]",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(
        entity: johnClient.copyWith(
          name: Name(''),
        ),
      ),
    ),
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
      DeleteEvent.deleted(entity: johnClient),
    ),
    expect: () => [
      DeleteState.inProgress(),
      DeleteState.success(),
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
      act: (bloc) => bloc.add(
            DeleteEvent.deleted(entity: johnClient),
          ),
      verify: (_) => verify(repository.delete(any)).called(1));

  blocTest(
    "Given [Repository.delete()] returns [RepositoryFailure.dbException] "
    "Then [State.submissionStatus] should be [failure()] "
    "And [SubmissionFailure] should be [reposptory()] "
    "And [RpositoryFailure] should be [dbException()]",
    setUp: () {
      when(repository.delete(any)).thenAnswer(
        (_) async => const Left(mock_failure.dbErrorRepositoryFailure),
      );
    },
    build: () => DeleteBloc<Client>(repository),
    act: (bloc) => bloc.add(
      DeleteEvent.deleted(entity: johnClient),
    ),
    skip: 1,
    expect: () => [
      DeleteState.repositoryFailure(
        failure: mock_failure.dbErrorRepositoryFailure,
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
      DeleteEvent.deleted(entity: johnClient),
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
      DeleteEvent.deleted(entity: johnClient),
    ),
    skip: 1,
    expect: () => [DeleteState.success()],
  );
}