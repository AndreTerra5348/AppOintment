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

@GenerateMocks([ClientRepository])
void main() {
  late Client validClient;
  late Client invalidClient;
  setUp(() {
    validClient = Client(name: Name('John'), id: Uid.fromInt(1));
    invalidClient = Client(name: Name(''), id: Uid.fromInt(1));
  });
  test("initial [State] should be [loading()]", () {
    // Arrange
    final sut = DetailsBloc<Client>();
    // Act
    // Assert
    expect(sut.state, DetailsState<Client>.loading());
  });
  test(
      "Given [State.loading()] "
      "[optionEntity] should be none", () {
    // Arrange
    final sut = DetailsBloc<Client>();
    // Act
    // Assert
    expect(sut.state.optionEntity, none());
  });

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(client)] with valid client"
    "Then [State] should be [loaded(client)] ",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(DetailsEvent<Client>.loaded(entity: validClient)),
    expect: () => [DetailsState<Client>.loaded(entity: validClient)],
  );

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(client)] with valid client"
    "Then [State.optionEntity] should be [some(client)] ",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(DetailsEvent<Client>.loaded(entity: validClient)),
    verify: (bloc) => expect(bloc.state.optionEntity, some(validClient)),
  );

  blocTest(
    "Given [State.initial()] "
    "When [Event.loaded(client)] with invalid client"
    "Then [DetailsBloc<Client>] throws [CriticalError]",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(DetailsEvent<Client>.loaded(entity: invalidClient)),
    errors: () => [isA<CriticalError>()],
  );
}
