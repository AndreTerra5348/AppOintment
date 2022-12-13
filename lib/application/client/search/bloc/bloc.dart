import 'dart:async';

import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:appointment/infrastructure/core/page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  final PageService<Client, ClientModels, ClientModel> _pageService;
  ClientSearchBloc(this._pageService) : super(ClientSearchState.initial()) {
    on<_FetchRequested>(_onFetchRequested);
    on<_TermChanged>(
      _onTermChanged,
      transformer: throttleDroppable(throttleDuration),
    );
    on<_RefreshRequested>(_onRefreshRequested);
  }

  FutureOr<void> _emitFetched(Emitter<ClientSearchState> emit) async {
    final page = await _pageService.getPage(
      limit: state.limit,
      offset: state.offset,
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
          hasReachedMax: clients.isEmpty || clients.length % state.limit != 0,
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

  Future<FutureOr<void>> _onTermChanged(
      _TermChanged event, Emitter<ClientSearchState> emit) async {
    emit(
      state.copyWith(
        status: const ClientSearchStatus.loading(),
        clients: const Iterable.empty(),
        term: event.term,
      ),
    );
    await _emitFetched(emit);
  }

  FutureOr<void> _onRefreshRequested(
      _RefreshRequested event, Emitter<ClientSearchState> emit) async {
    emit(state.copyWith(
      status: const ClientSearchStatus.loading(),
      clients: const Iterable.empty(),
    ));
    await _emitFetched(emit);
  }
}
