import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'bloc_test.mocks.dart';
import '../../../common/failure_fixture.dart' as failure_fixture;

@GenerateMocks([ClientRepository])
void main() {
  late MockClientRepository repository;
  late Client validClient;
  late Client invalidClient;
  setUp(() {
    repository = MockClientRepository();
    validClient = Client(name: Name('John'), id: Uid.fromInt(1));
    invalidClient = Client(name: Name(''), id: Uid.fromInt(1));
  });

  test("initial [State] should be [initial()]", () {
    // Arrange
    final sut = EditBloc(MockClientRepository());
    // Act
    // Assert
    expect(sut.state, const EditState.initial());
  });

  blocTest(
    "Given [State.initial()] "
    "When [Event.editPressed] "
    "Then [State.editing()]",
    build: () => EditBloc(MockClientRepository()),
    act: (bloc) => bloc.add(const EditEvent<Client>.editPressed()),
    expect: () => [const EditState.editing()],
  );

  blocTest(
    "Given [State.editing()] "
    "When [Event.savePressed(client)] with valid client"
    "And [Repository.update()] returns true "
    "Then [State] should be [inProgress()] "
    "Then [State] should be [success()]",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => right(true),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) => bloc.add(EditEvent<Client>.savePressed(entity: validClient)),
    expect: () => [
      const EditState.inProgress(),
      const EditState.success(),
    ],
  );

  blocTest(
    "Given [State.editing()] "
    "When [Event.savePressed(client)] with valid client"
    "Then [Repository.update] should be called with [client] once",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => right(true),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) => bloc.add(EditEvent<Client>.savePressed(entity: validClient)),
    verify: (bloc) => verify(repository.update(validClient)).called(1),
  );

  blocTest(
    "Given [State.editing()] "
    "When [Event.savePressed(client)] with invalid client"
    "Then [State] should be [failure()] "
    "And  [failure] should be [invalidFields()]",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) => bloc.add(
      EditEvent<Client>.savePressed(entity: invalidClient),
    ),
    expect: () => [
      EditState.invalidFieldFailure(),
    ],
  );

  blocTest(
    "Given [State.editing()] "
    "When [Event.savePressed(client)] with invalid client"
    "Then [Repository.update()] should NOT be called ",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => const Right(true),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) =>
        bloc.add(EditEvent<Client>.savePressed(entity: invalidClient)),
    verify: (_) => verifyNever(repository.update(any)),
  );

  blocTest(
    "When [Repository.update()] returns [RepositoryFailure.dbException] "
    "Then [State] should be [failure()] "
    "And [SubmissionFailure] should be [reposptory()] "
    "And [RpositoryFailure] should be [dbException()]",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => const Left(failure_fixture.dbErrorRepositoryFailure),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) => bloc.add(EditEvent<Client>.savePressed(entity: validClient)),
    skip: 1,
    expect: () => [
      EditState.repositoryFailure(
        failure: failure_fixture.dbErrorRepositoryFailure,
      ),
    ],
  );

  blocTest(
    "When [Repository.update()] returns false "
    "Then [State] should be [failure()] "
    "And [SubmissionFailure] should be [notFound()]",
    setUp: () {
      when(repository.update(any)).thenAnswer(
        (_) async => const Right(false),
      );
    },
    build: () => EditBloc(repository),
    act: (bloc) => bloc.add(EditEvent<Client>.savePressed(entity: validClient)),
    skip: 1,
    expect: () => [
      EditState.notFoundFailure(),
    ],
  );
}
