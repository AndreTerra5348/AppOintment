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
      final bloc = DetailsBloc();

      expect(bloc.state, const DetailsState.initial());
    },
  );
  blocTest<DetailsBloc, DetailsState>(
    "When [editEmited] emit [edit()] ",
    build: () => DetailsBloc(),
    act: (bloc) =>
        bloc.add(const DetailsEvent.editEmited(state: EditState.initial())),
    expect: () => [
      const DetailsState.edit(state: EditState.initial()),
    ],
  );

  blocTest<DetailsBloc, DetailsState>(
    "When [deleteEmited] emit [delete()] ",
    build: () => DetailsBloc(),
    act: (bloc) =>
        bloc.add(const DetailsEvent.deleteEmited(state: DeleteState.initial())),
    expect: () => [
      const DetailsState.delete(state: DeleteState.initial()),
    ],
  );

  blocTest<DetailsBloc, DetailsState>(
    "When [detailsEmited] emit [details()] ",
    build: () => DetailsBloc(),
    act: (bloc) =>
        bloc.add(DetailsEvent.loadEmited(state: LoadState.loading())),
    expect: () => [
      DetailsState.load(state: LoadState.loading()),
    ],
  );
}
