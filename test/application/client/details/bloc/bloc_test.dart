import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([ClientRepository])
void main() {
  group("ClientDetailsBloc", () {
    test(
        "Given [ClientDetailsState.initial()] "
        "[client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc();
      // Act
      // Assert
      expect(sut.state.client.isValid, isFalse);
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[status] should be [ClientDetailsStatus.loading()]", () {
      // Arrange
      final sut = ClientDetailsBloc();
      // Act
      // Assert
      expect(sut.state.status, const ClientDetailsStatus.loading());
    });

    final johnClient = Client(name: Name('John'), id: Uid.fromInt(1));

    group("_ClientLoaded - ", () {
      blocTest(
        "Given [ClientDetailsState.initial()] "
        "When [ClientDetailsEvent.clientLoaded()] with valid client"
        "Then [ClientDetailsState.client] should be [client] "
        "And [ClientDetailsState.status] should be [ready()]",
        build: () => ClientDetailsBloc(),
        act: (bloc) =>
            bloc.add(ClientDetailsEvent.clientLoaded(client: johnClient)),
        expect: () => [
          ClientDetailsState.initial().copyWith(
            client: johnClient,
            status: const ClientDetailsStatus.loaded(),
          ),
        ],
      );

      blocTest(
        "Given [ClientDetailsState.initial()] "
        "When [ClientDetailsEvent.clientLoaded()] with invalid client"
        "Then [ClientDetailsBloc] throws [CriticalError]",
        build: () => ClientDetailsBloc(),
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
  });
}
