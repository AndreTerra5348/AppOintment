import 'dart:async';

import 'package:appointment/application/common/pagination.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  final IPageService<Client, ClientModels, ClientModel> _pageService;
  ClientSearchBloc(this._pageService) : super(ClientSearchState.initial()) {
    on<_TermChanged>(_termChanged);
  }
  Future<FutureOr<void>> _termChanged(
      _TermChanged event, Emitter<ClientSearchState> emit) async {
    final page = await _pageService.getPage(
        limit: state.pagination.limit,
        offset: state.pagination.offset,
        filter: state.getFilter());

    page.fold(
      (failure) => null,
      (clients) {
        emit(state.copyWith(
          term: event.term,
          clients: clients,
        ));
      },
    );
  }
}
