import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Client bobClient;
  setUp(() {
    bobClient = Client(name: Name("Bob"), id: Uid.fromInt(1));
  });
  group("Given [ClientBloc.initial()]", () {
    group("When [ClientEvent.clientLoaded(Client)]", () {
      blocTest<ClientBloc, ClientState>(
        "Then [ClientState.client] is [Client]",
        build: () => ClientBloc(),
        act: (bloc) => bloc.add(ClientEvent.loaded(client: bobClient)),
        expect: () => [ClientState.initial().copyWith(client: bobClient)],
      );
    });

    group("When [ClientEvent.nameChanged(name)]", () {
      const name = "John";
      blocTest<ClientBloc, ClientState>(
        "Then [ClientState.client.name] is [name]",
        build: () => ClientBloc(),
        seed: () => ClientState.initial().copyWith(client: bobClient),
        act: (bloc) => bloc.add(const ClientEvent.nameChanged(name: name)),
        expect: () => [
          ClientState.initial().copyWith(
            client: bobClient.copyWith(name: Name(name)),
          )
        ],
      );
    });
  });
}
