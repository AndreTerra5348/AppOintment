import 'dart:async';

import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

const int _pageLimit = 10;

class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  final IPageService<Client, ClientModels, ClientModel> _pageService;
  ClientSearchBloc(this._pageService) : super(ClientSearchState.initial()) {
    on<_Init>(_onInit);
    on<_FetchRequested>(_onFetchRequested);
    on<_TermChanged>(_onTermChanged);
  }

  FutureOr<void> _emitFetched(Emitter<ClientSearchState> emit) async {
    final page = await _pageService.getPage(
      limit: _pageLimit,
      offset: state.clients.length,
      filter: state.getFilter(),
    );

    emit(
      page.fold(
        (failure) => state.copyWith(
          status: ClientSearchStatus.failure(failure: failure),
        ),
        (clients) => state.copyWith(
          status: state.clients.isEmpty && clients.isEmpty
              ? const ClientSearchStatus.empty()
              : const ClientSearchStatus.success(),
          clients: state.clients.followedBy(clients),
          hasReachedMax: clients.isEmpty,
        ),
      ),
    );
  }

  FutureOr<void> _onFetchRequested(
      _FetchRequested event, Emitter<ClientSearchState> emit) async {
    if (state.hasReachedMax) return;
    emit(state.copyWith(status: const ClientSearchStatus.loading()));
    await _emitFetched(emit);
  }

  FutureOr<void> _onInit(_Init event, Emitter<ClientSearchState> emit) async {
    emit(state.copyWith(status: const ClientSearchStatus.loading()));
    await _emitFetched(emit);
  }

  Future<FutureOr<void>> _onTermChanged(
      _TermChanged event, Emitter<ClientSearchState> emit) async {
    emit(
      state.copyWith(
        status: const ClientSearchStatus.loading(),
        term: event.term,
        clients: const Iterable.empty(),
      ),
    );
    await _emitFetched(emit);
  }
}
