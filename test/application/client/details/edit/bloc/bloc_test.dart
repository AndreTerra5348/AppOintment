import 'package:appointment/application/client/details/edit/bloc/bloc.dart';
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
  group("ClientDetailsEditBloc", () {
    late MockClientRepository repository;
    test(
        "Given [State.initial()] "
        "[client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsEditBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.client.isValid, false);
    });

    test(
        "Given [State.initial()] "
        "[submissionStatus] should be [initial()]", () {
      // Arrange
      final sut = ClientDetailsEditBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });

    test(
        "Given [State.initial()] "
        "[isEditing] should be false", () {
      // Arrange
      final sut = ClientDetailsEditBloc(MockClientRepository());
      // Act
      // Assert
      expect(sut.state.isEditing, false);
    });

    final johnClient = Client(name: Name('John'), id: Uid.fromInt(1));

    group("_Started", () {
      final johnClientEditingState = ClientDetailsEditState.initial().copyWith(
        client: johnClient,
        isEditing: true,
      );
      blocTest(
        "Given [State.initial()] "
        "When [Event.started(client)] "
        "Then [State.isEditing] should be true",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        act: (bloc) =>
            bloc.add(ClientDetailsEditEvent.started(client: johnClient)),
        expect: () => [johnClientEditingState],
      );

      blocTest(
        "Given [State.initial()] "
        "When [Event.started(client)] "
        "Then [State.client] should be valid",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        act: (bloc) =>
            bloc.add(ClientDetailsEditEvent.started(client: johnClient)),
        verify: (bloc) {
          expect(bloc.state.client.isValid, isTrue);
        },
      );

      blocTest(
        "Given [State.initial()] "
        "When [Event.started(client)] "
        "Then [State.client] should be [client]",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        act: (bloc) =>
            bloc.add(ClientDetailsEditEvent.started(client: johnClient)),
        expect: () => [
          johnClientEditingState,
        ],
      );

      blocTest(
        "Given [State.initial()] "
        "When [Event.started(client)] with invaid client "
        "Then [ClientDetailsEditBloc] should throw [CriticalError]",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        act: (bloc) => bloc.add(
          ClientDetailsEditEvent.started(
            client: johnClient.copyWith(
              name: Name(''),
            ),
          ),
        ),
        errors: () => [isA<CriticalError>()],
      );
    });

    group("_Canceled", () {
      final johnClientEditingState = ClientDetailsEditState.initial().copyWith(
        client: johnClient,
        isEditing: true,
      );

      final invalidEditingState = ClientDetailsEditState.initial().copyWith(
        isEditing: true,
      );

      final dbExceptionFailure =
          RepositoryFailure.dbException(error: Exception());

      blocTest(
        "Given [State.isEditing] true "
        "When [Event.canceled()] "
        "Then [State.submissionStatus] should be [inProgress()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any))
              .thenAnswer((_) async => right(johnClient));
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.editCanceled()),
        expect: () => [
          johnClientEditingState.asInProgress,
          johnClientEditingState.copyWith(
            isEditing: false,
          )
        ],
      );

      blocTest(
        "Given [State.isEditing] true "
        "When [Event.canceled()] "
        "After [State.submissionStatus] is [inProgress()] "
        "Then [Repository.getById()] should be called once",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any))
              .thenAnswer((_) async => right(johnClient));
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.editCanceled()),
        verify: (_) {
          verify(repository.getById(any)).called(1);
        },
      );

      blocTest(
        "Given [Repository.getById()] returns [RepositoryFailure.dbException] "
        "Then [State.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [dbException()]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any)).thenAnswer(
            (_) async => left(dbExceptionFailure),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => invalidEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.editCanceled()),
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
        "Given [State.client] name changed "
        "And [Repository.getById()] returns [Client] "
        "And [State.client] should be unmodified [client] "
        "And [State.isEditing] should be false",
        setUp: () {
          repository = MockClientRepository();
          when(repository.getById(any)).thenAnswer(
            (_) async => right(johnClient),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState.copyWith(
          client: johnClient.copyWith(name: Name('Bob')),
        ),
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.editCanceled()),
        skip: 1,
        expect: () => [johnClientEditingState.copyWith(isEditing: false)],
      );
    });

    group("_NameChanged", () {
      blocTest(
        "Given [State.isEditing] true "
        "When [Event.nameChanged()] witn new name "
        "Then [State.client] should be [client] with new name ",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        seed: () => ClientDetailsEditState.initial().copyWith(
          client: johnClient,
        ),
        act: (bloc) => bloc.add(
          const ClientDetailsEditEvent.nameChanged(name: 'Bob'),
        ),
        expect: () => [
          ClientDetailsEditState.initial().copyWith(
            client: johnClient.copyWith(name: Name('Bob')),
          ),
        ],
      );

      blocTest(
        "Given [State.isEditing] true "
        "When [Event.nameChanged()] witn new name "
        "Then [State.submissionStatus] should be [initial()] ",
        build: () => ClientDetailsEditBloc(MockClientRepository()),
        seed: () => ClientDetailsEditState.initial().copyWith(
          client: johnClient,
        ),
        act: (bloc) => bloc.add(
          const ClientDetailsEditEvent.nameChanged(name: 'Bob'),
        ),
        expect: () => [
          ClientDetailsEditState.initial().copyWith(
            client: johnClient.copyWith(name: Name('Bob')),
            submissionStatus: const SubmissionStatus.initial(),
          ),
        ],
      );
    });

    group("_SavePressed", () {
      final johnClientEditingState = ClientDetailsEditState.initial().copyWith(
        client: johnClient,
        isEditing: true,
      );
      final invalidEditingState = ClientDetailsEditState.initial().copyWith(
        isEditing: true,
      );

      final dbExceptionFailure =
          RepositoryFailure.dbException(error: Exception());
      blocTest(
        "Given [State.isEditing] true "
        "When [Event.savePressed()] "
        "Then [State.submissionStatus] should be [inProgress()] "
        "Then [Repository.update()] should be called once ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => right(true),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.savePressed()),
        expect: () => [
          johnClientEditingState.asInProgress,
          johnClientEditingState.asSuccess,
        ],
        verify: (_) {
          verify(repository.update(johnClient)).called(1);
        },
      );

      blocTest(
        "Given invalid [State.client] "
        "When [Event.savePressed()] is added "
        "Then [State.submissionStatus] should be [failure()] "
        "And  [SubmissionFailure] should be [invalidFields()] "
        "And [Repository.update()] should not be called ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => const Right(true),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => invalidEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.savePressed()),
        expect: () => [
          invalidEditingState.asInvalidFieldsFailure,
        ],
        verify: (_) {
          verifyNever(repository.update(any));
        },
      );

      blocTest(
        "When [Repository.update()] returns [RepositoryFailure.dbException] "
        "Then [State.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [dbException()]",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => Left(dbExceptionFailure),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.savePressed()),
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
        "When [Repository.update()] returns false "
        "Then [State.submissionStatus] should be [failure()] "
        "And [SubmissionFailure] should be [reposptory()] "
        "And [RpositoryFailure] should be [notFound()] ",
        setUp: () {
          repository = MockClientRepository();
          when(repository.update(any)).thenAnswer(
            (_) async => const Right(false),
          );
        },
        build: () => ClientDetailsEditBloc(repository),
        seed: () => johnClientEditingState,
        act: (bloc) => bloc.add(const ClientDetailsEditEvent.savePressed()),
        skip: 1,
        expect: () => [
          johnClientEditingState.asNotFoundFailure,
        ],
        verify: (_) {
          verify(repository.update(any)).called(1);
        },
      );

      blocTest(
          "When [Repository.update()] returns true "
          "Then [State.submissionStatus] should be [success()] "
          "And [State.client] should be valid "
          "And [State.isEditing] should be false "
          "And [State.status] should be [ready()]",
          setUp: () {
            repository = MockClientRepository();
            when(repository.update(any)).thenAnswer(
              (_) async => const Right(true),
            );
          },
          build: () => ClientDetailsEditBloc(repository),
          seed: () => johnClientEditingState,
          act: (bloc) => bloc.add(const ClientDetailsEditEvent.savePressed()),
          skip: 1,
          expect: () => [johnClientEditingState.asSuccess]);
    });
  });
}
