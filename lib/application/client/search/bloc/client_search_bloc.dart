/// Defines [ClientSearchBloc]
import 'dart:async';

import 'package:appointment/application/client/search/client_search_status.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/infrastructure/drift/client/client_filters.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'client_search_bloc.freezed.dart';
part 'client_search_event.dart';
part 'client_search_state.dart';

/// Debouce throttle duration
const throttleDuration = Duration(milliseconds: 100);

/// Transforms the events to handle the debouce
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

/// Handles [Client] search events and states
class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  /// Listens to the events and changes the state accordingly
  final PaginationService<Client, ClientModels> _pageService;
  ClientSearchBloc(this._pageService) : super(ClientSearchState.initial()) {
    on<_FetchRequested>(_onFetchRequested);
    on<_TermChanged>(
      _onTermChanged,
      transformer: throttleDroppable(throttleDuration),
    );
    on<_RefreshRequested>(_onRefreshRequested);
  }

  /// Fetches a page from [PaginationService] of [Client]s from the database
  FutureOr<void> _emitFetched(Emitter<ClientSearchState> emit) async {
    final page = await _pageService.getPage(
      limit: state.limit,
      offset: state.offset,
      filter: state.getFilter(),
    );

    // Update the state according to the page service response
    emit(
      page.fold(
        (failure) => state.copyWith(
          status: ClientSearchStatus.failure(failure: failure),
        ),
        (clients) => state.copyWith(
          // if the page service clients iterable is empty
          // and the state clients iterable is empty
          // then the search is empty
          // otherwise the search is successful
          status: state.clients.isEmpty && clients.isEmpty
              ? const ClientSearchStatus.empty()
              : const ClientSearchStatus.success(),
          // Append the new clients (from page service)
          // to the existing clients (from state)
          clients: state.clients.followedBy(clients),
          // Has reached max if page service clients iterable is empty
          // or the length of the clients iterable is not a multiple of the limit
          // which means that there are no more clients to fetch
          hasReachedMax: clients.isEmpty || clients.length % state.limit != 0,
        ),
      ),
    );
  }

  /// Handles the fetch requested event
  FutureOr<void> _onFetchRequested(
      _FetchRequested event, Emitter<ClientSearchState> emit) async {
    // Do nothing if there are no more clients to fetch
    if (state.hasReachedMax) return;
    // Emit the loading state while fetching
    emit(state.copyWith(status: const ClientSearchStatus.loading()));
    await _emitFetched(emit);
  }

  /// Handles the term changed event
  Future<FutureOr<void>> _onTermChanged(
      _TermChanged event, Emitter<ClientSearchState> emit) async {
    // Loading status with updated term
    emit(
      state.copyWith(
        status: const ClientSearchStatus.loading(),
        clients: const Iterable.empty(),
        term: event.term,
      ),
    );
    await _emitFetched(emit);
  }

  /// Handles the refresh event
  FutureOr<void> _onRefreshRequested(
      _RefreshRequested event, Emitter<ClientSearchState> emit) async {
    emit(state.copyWith(
      status: const ClientSearchStatus.loading(),
      clients: const Iterable.empty(),
    ));
    await _emitFetched(emit);
  }
}
