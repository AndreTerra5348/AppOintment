import 'package:appointment/application/client/details/delete/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
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
  group("ClientDetailsDeleteBloc", () {
    late MockClientRepository repository;
    test(
        "Given [State.initial()] "
        "[client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsDeleteBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.client.isValid, isFalse);
    });

    test(
        "Given [State.initial()] "
        "[submissionStatus] should be [initial()]", () {
      // Arrange
      final sut = ClientDetailsDeleteBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });

    final johnClient = Client(name: Name('John'), id: Uid.fromInt(1));

    group("_Deleted", () {
      final dbExceptionFailure =
          RepositoryFailure.dbException(error: Exception());

      blocTest(
        "When [Event.deleted()] with invalid client "
        "Then [ClientDetailsDeleteBloc] should throw [CriticalError]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(
            client: johnClient.copyWith(
              name: Name(''),
            ),
          ),
        ),
        errors: () => [isA<CriticalError>()],
      );

      blocTest(
        "When [Event.deleted()] with valid client "
        "Then [State.submissionStatus] should be [inProgress()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(client: johnClient),
        ),
        expect: () => [
          ClientDetailsDeleteState.inProgress(client: johnClient),
          ClientDetailsDeleteState.suceess(client: johnClient)
        ],
      );

      blocTest(
        "When [Event.deleted()] "
        "Then [Repository.delete()] should be called once ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(client: johnClient),
        ),
        verify: (_) {
          verify(repository.delete(any)).called(1);
        },
      );

      blocTest(
        "Given [Repository.delete()] returns [RepositoryFailure.dbException] "
        "Then [State.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [dbException()]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => Left(dbExceptionFailure),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(client: johnClient),
        ),
        skip: 1,
        expect: () => [
          ClientDetailsDeleteState.dbFailure(
            client: johnClient,
            failure: dbExceptionFailure,
          )
        ],
      );

      blocTest(
        "Given [Repository.delete()] returns false "
        "Then [State.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [notFound()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => const Right(false),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(client: johnClient),
        ),
        skip: 1,
        expect: () => [
          ClientDetailsDeleteState.notFoundFailure(client: johnClient),
        ],
      );
      blocTest(
        "Given [Repository.delete()] returns true "
        "Then [State.submissionStatus] should be [success()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.delete(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsDeleteBloc(repository),
        act: (bloc) => bloc.add(
          ClientDetailsDeleteEvent.deleted(client: johnClient),
        ),
        skip: 1,
        expect: () => [ClientDetailsDeleteState.suceess(client: johnClient)],
      );
    });
  });
}
