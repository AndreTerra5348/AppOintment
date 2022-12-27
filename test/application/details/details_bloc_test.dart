import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "Initial [State] should be [initial()]",
    () {
      final bloc = DetailsBloc<Client>();

      expect(bloc.state, const DetailsState<Client>.initial());
    },
  );
  blocTest<DetailsBloc<Client>, DetailsState<Client>>(
    "When [editEmited] emit [edit()] ",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(
      const DetailsEvent<Client>.editEmited(
        state: EditState.initial(),
      ),
    ),
    expect: () => [
      const DetailsState<Client>.edit(
        state: EditState.initial(),
      ),
    ],
  );

  blocTest<DetailsBloc<Client>, DetailsState<Client>>(
    "When [deleteEmited] emit [delete()] ",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(
      const DetailsEvent<Client>.deleteEmited(
        state: DeleteState.initial(),
      ),
    ),
    expect: () => [
      const DetailsState<Client>.delete(
        state: DeleteState.initial(),
      ),
    ],
  );

  blocTest<DetailsBloc<Client>, DetailsState<Client>>(
    "When [detailsEmited] emit [details()] ",
    build: () => DetailsBloc<Client>(),
    act: (bloc) => bloc.add(
      DetailsEvent<Client>.loadEmited(
        state: LoadState.loading(),
      ),
    ),
    expect: () => [
      DetailsState<Client>.load(
        state: LoadState.loading(),
      ),
    ],
  );
}
