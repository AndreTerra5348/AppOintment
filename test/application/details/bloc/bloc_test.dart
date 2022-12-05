import 'package:appointment/application/details/bloc/bloc.dart';
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
import '../../../common/failure_fixture.dart' as failure_fixture;

@GenerateMocks([ClientRepository])
void main() {
  late Client validClient;
  late MockClientRepository repository;

  setUp(() {
    validClient = Client(name: Name('John'), id: Uid.fromInt(1));
    repository = MockClientRepository();

    when(repository.getById(any)).thenAnswer((_) async => Right(validClient));
  });
  test("initial [State] should be [loading()]", () {
    // Arrange
    final sut = DetailsBloc<Client>(repository);
    // Act
    // Assert
    expect(sut.state, DetailsState<Client>.loading());
  });

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(id)] with valid id"
    "Then [State] should be [loading()] "
    "When [repository.getById()] returns [Right(Client)] "
    "Then [State] should be [success(Client)]",
    build: () => DetailsBloc<Client>(repository),
    act: (bloc) => bloc.add(DetailsEvent.loaded(id: validClient.id)),
    expect: () => [
      DetailsState<Client>.loading(),
      DetailsState<Client>.success(entity: validClient),
    ],
  );

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(id)] "
    "Then [Repository.getById(id)] should be called once ",
    setUp: () => when(repository.getById(any))
        .thenAnswer((_) async => Right(validClient)),
    build: () => DetailsBloc<Client>(repository),
    act: (bloc) => bloc.add(DetailsEvent.loaded(id: validClient.id)),
    verify: (bloc) => verify(repository.getById(validClient.id)).called(1),
  );

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(id)] with invalid id "
    "Then [DetailsBloc<Client>] throws [CriticalError]",
    build: () => DetailsBloc<Client>(repository),
    act: (bloc) => bloc.add(DetailsEvent.loaded(id: Uid())),
    errors: () => [isA<CriticalError>()],
  );

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(id)] with valid id "
    "And [repository.getById(client.id)] returns [Left(RepositoryFailure)] "
    "Then [State] should be [failure()] "
    "And [State.failure] should be [RepositoryFailure]",
    setUp: () => when(repository.getById(any)).thenAnswer(
        (_) async => const Left(failure_fixture.dbErrorRepositoryFailure)),
    build: () => DetailsBloc<Client>(repository),
    act: (bloc) => bloc.add(DetailsEvent.loaded(id: validClient.id)),
    skip: 1,
    expect: () => [
      DetailsState<Client>.failure(
        failure: failure_fixture.dbErrorSubmissionFailure,
      )
    ],
  );
}
