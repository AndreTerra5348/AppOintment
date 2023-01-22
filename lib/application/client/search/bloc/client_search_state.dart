part of 'client_search_bloc.dart';

/// Defines [Client] search states
@freezed
class ClientSearchState with _$ClientSearchState {
  /// Emited when the [ClientSearchBloc] changes state
  const factory ClientSearchState({
    required String term,
    required ClientSearchStatus status,
    required SearchFilter filter,
    required Iterable<Client> clients,
    required bool hasReachedMax,
  }) = _ClientSearchState;

  /// Emitted when the [ClientSearchBloc] is initialized
  factory ClientSearchState.initial() => const ClientSearchState(
        term: "",
        status: ClientSearchStatus.loading(),
        clients: Iterable.empty(),
        filter: SearchFilter.name(),
        hasReachedMax: false,
      );
}

/// Defines Filters for [Client] search
@freezed
class SearchFilter with _$SearchFilter {
  /// Filter by [Client] name
  const factory SearchFilter.name() = _NameFilter;
}

/// Extends [ClientSearchState] to handle [SearchFilter]s
extension ClientSearchStateExtension on ClientSearchState {
  /// Returns the [SelectFilter] for the [Client] search
  SelectFilter<ClientModels> getFilter() {
    return filter.map(
      name: (_) => ClientNameFilter(term),
    );
  }

  /// number of [Client]s to skip
  int get offset => clients.length;

  /// number of [Client]s to fetch
  int get limit => 10;
}
