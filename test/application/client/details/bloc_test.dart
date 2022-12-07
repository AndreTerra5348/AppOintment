import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "Initial [State] should be [initial()]",
    () {
      final bloc = ClientDetailsBloc();

      expect(bloc.state, const ClientDetailsState.initial());
    },
  );
  blocTest<ClientDetailsBloc, ClientDetailsState>(
    "When [editEmited] emit [edit()] ",
    build: () => ClientDetailsBloc(),
    act: (bloc) => bloc
        .add(const ClientDetailsEvent.editEmited(state: EditState.initial())),
    expect: () => [
      const ClientDetailsState.edit(state: EditState.initial()),
    ],
  );

  blocTest<ClientDetailsBloc, ClientDetailsState>(
    "When [deleteEmited] emit [delete()] ",
    build: () => ClientDetailsBloc(),
    act: (bloc) => bloc.add(
        const ClientDetailsEvent.deleteEmited(state: DeleteState.initial())),
    expect: () => [
      const ClientDetailsState.delete(state: DeleteState.initial()),
    ],
  );

  blocTest<ClientDetailsBloc, ClientDetailsState>(
    "When [detailsEmited] emit [details()] ",
    build: () => ClientDetailsBloc(),
    act: (bloc) =>
        bloc.add(ClientDetailsEvent.detailsEmited(state: LoadState.loading())),
    expect: () => [
      ClientDetailsState.details(state: LoadState.loading()),
    ],
  );
}
