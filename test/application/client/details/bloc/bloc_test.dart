import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/status.dart';
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
  group("ClientDetailsBloc", () {
    late MockClientRepository repository;
    test(
        "Given [ClientDetailsState.initial()] "
        "[client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.client.isValid, false);
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[submissionStatus] should be [initial()]", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[status] should be [ClientDetailsStatus.loading()]", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.status, const ClientDetailsStatus.loading());
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[isEditing] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.isEditing, false);
    });

    final johnClient = Client(name: Name('John'), id: Uid.fromInt(1));

    group("_ClientLoaded - ", () {
      blocTest(
        "Given [ClientDetailsState.initial()] "
        "When [ClientDetailsEvent.clientLoaded()] with valid client"
        "Then [ClientDetailsState.client] should be [client] "
        "And [ClientDetailsState.status] should be [ready()]",
        build: () => ClientDetailsBloc(MockClientRepository()),
        act: (bloc) =>
            bloc.add(ClientDetailsEvent.clientLoaded(client: johnClient)),
        expect: () => [
          ClientDetailsState.initial().copyWith(
            client: johnClient,
            status: const ClientDetailsStatus.ready(),
          ),
        ],
      );

      blocTest(
        "Given [ClientDetailsState.initial()] "
        "When [ClientDetailsEvent.clientLoaded()] with invalid client"
        "Then [ClientDetailsBloc] throws [CriticalError]",
        build: () => ClientDetailsBloc(MockClientRepository()),
        act: (bloc) {
          bloc.add(
            ClientDetailsEvent.clientLoaded(
              client: Client.withoutUid(
                name: Name(''),
              ),
            ),
          );
        },
        errors: (() => [isA<CriticalError>()]),
      );
    });

    group("_EditPressed", () {
      final johnClientReadyState = ClientDetailsState.initial().copyWith(
        client: johnClient,
        status: const ClientDetailsStatus.ready(),
      );
      blocTest(
        "Given [ClientDetailsState.initial()] "
        "With valid [ClientDetailsState.client] "
        "When [ClientDetailsEvent.editPressed()] is added "
        "Then [ClientDetailsState.isEditing] should be true",
        build: () => ClientDetailsBloc(MockClientRepository()),
        seed: () => johnClientReadyState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.editPressed()),
        expect: () => [
          johnClientReadyState.copyWith(
            isEditing: true,
          ),
        ],
      );
    });

    group("_EditCanceled", () {
      final johnClientEditingState = ClientDetailsState.initial().copyWith(
        client: johnClient,
        isEditing: true,
        status: const ClientDetailsStatus.ready(),
      );

      final invalidEditingState = ClientDetailsState.initial().copyWith(
        isEditing: true,
      );

      final dbExceptionFailure =
          RepositoryFailure.dbException(error: Exception());
      blocTest(
        "Given [ClientDetailsState.isEditing] true "
        "When [ClientDetailsEvent.editCanceled()] is added "
        "Then [ClientDetailsState.submissionStatus] should be [inProgress()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any))
              .thenAnswer((_) async => right(johnClient));
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.editCanceled()),
        expect: () => [
          johnClientEditingState.asInProgress,
          johnClientEditingState.copyWith(
            isEditing: false,
          )
        ],
      );

      blocTest(
        "Given [ClientDetailsState.isEditing] true "
        "When [ClientDetailsEvent.editCanceled()] is added "
        "After [ClientDetailsState.submissionStatus] is [inProgress()] "
        "Then [Repository.getById()] should be called once",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any))
              .thenAnswer((_) async => right(johnClient));
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.editCanceled()),
        verify: (_) {
          verify(repository.getById(any)).called(1);
        },
      );

      blocTest(
        "Given [Repository.getById()] returns [RepositoryFailure.dbException] "
        "Then [ClientDetailsState.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [dbException()]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any)).thenAnswer(
            (_) async => left(dbExceptionFailure),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => invalidEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.editCanceled()),
        expect: () => [
          invalidEditingState.asInProgress,
          invalidEditingState.copyWith(
            submissionStatus: SubmissionStatus.failure(
              failure: SubmissionFailure.repository(
                failure: dbExceptionFailure,
              ),
            ),
          ),
        ],
      );

      blocTest(
        "Given [ClientDetailsState.client] name changed "
        "And [Repository.getById()] returns [Client] "
        "And [ClientDetailsState.client] should be unmodified [client] "
        "And [ClientDetailsState.isEditing] should be false",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any)).thenAnswer(
            (_) async => right(johnClient),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState.copyWith(
          client: johnClient.copyWith(name: Name('Bob')),
        ),
        act: (bloc) => bloc.add(const ClientDetailsEvent.editCanceled()),
        skip: 1,
        expect: () => [johnClientEditingState.copyWith(isEditing: false)],
      );
    });

    group("_NameChanged", () {
      blocTest(
        "Given [ClientDetailsState.status] is [ready()] "
        "When [ClientDetailsEvent.nameChanged()] witn new name "
        "Then [ClientDetailsState.client] should be [client] with new name ",
        build: () => ClientDetailsBloc(MockClientRepository()),
        seed: () => ClientDetailsState.initial().copyWith(
          client: johnClient,
          status: const ClientDetailsStatus.ready(),
        ),
        act: (bloc) => bloc.add(
          const ClientDetailsEvent.nameChanged(name: 'Bob'),
        ),
        expect: () => [
          ClientDetailsState.initial().copyWith(
            client: johnClient.copyWith(name: Name('Bob')),
            status: const ClientDetailsStatus.ready(),
          ),
        ],
      );
    });

    group("_SavePressed", () {
      final johnClientEditingState = ClientDetailsState.initial().copyWith(
        client: johnClient,
        isEditing: true,
        status: const ClientDetailsStatus.ready(),
      );
      final invalidEditingState = ClientDetailsState.initial().copyWith(
        isEditing: true,
      );

      final dbExceptionFailure =
          RepositoryFailure.dbException(error: Exception());
      blocTest(
        "Given a valid [ClientDetailsState.client] "
        "When [ClientDetailsEvent.savePressed()] is added "
        "Then [ClientDetailsState.submissionStatus] should be [inProgress()] "
        "And [ClientDetailsState.isEditing] should be true "
        "And [ClientDetailsState.status] should be [ready()]"
        "Then [Repository.update()] should be called once ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => right(true),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
        expect: () => [
          johnClientEditingState.asInProgress,
          johnClientEditingState.asSuccess,
        ],
        verify: (_) {
          verify(repository.update(johnClient)).called(1);
        },
      );

      blocTest(
        "Given invalid [ClientDetailsState.client] "
        "When [ClientDetailsEvent.savePressed()] is added "
        "Then [ClientDetailsState.submissionStatus] should be [failure()] "
        "And  [SubmissionFailure] should be [invalidFields()] "
        "And [Repository.update()] should not be called ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => invalidEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
        expect: () => [
          invalidEditingState.asInvalidFieldsFailure,
        ],
        verify: (_) {
          verifyNever(repository.update(any));
        },
      );

      blocTest(
        "Given [Repository.update()] returns [RepositoryFailure.dbException] "
        "Then [ClientDetailsState.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [dbException()]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => Left(dbExceptionFailure),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
        skip: 1,
        expect: () => [
          johnClientEditingState.copyWithRepositoryFailure(
            failure: dbExceptionFailure,
          ),
        ],
        verify: (_) {
          verify(repository.update(johnClient)).called(1);
        },
      );

      blocTest(
        "Given [Repository.update()] returns false "
        "Then [ClientDetailsState.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [notFound()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => const Right(false),
          );
        },
        build: () => ClientDetailsBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
        skip: 1,
        expect: () => [
          johnClientEditingState.asNotFoundFailure,
        ],
        verify: (_) {
          verify(repository.update(any)).called(1);
        },
      );

      blocTest(
          "Given [Repository.update()] returns true "
          "Then [ClientDetailsState.submissionStatus] should be [success()] "
          "And [ClientDetailsState.client] should be valid "
          "And [ClientDetailsState.isEditing] should be false "
          "And [ClientDetailsState.status] should be [ready()]",
          setUp: () {
            repository = MockClientRepository();
            when(repository.update(any)).thenAnswer(
              (_) async => const Right(true),
            );
          },
          build: () => ClientDetailsBloc(repository),
          seed: () => johnClientEditingState,
          act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
          skip: 1,
          expect: () => [johnClientEditingState.asSuccess]);
    });

    group("_DeletePressed", () {});
  });
}
