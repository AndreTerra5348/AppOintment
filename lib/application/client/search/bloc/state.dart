part of 'bloc.dart';

@freezed
class ClientSearchState with _$ClientSearchState {
  const factory ClientSearchState({
    required String term,
    required ClientSearchStatus status,
    required SearchFilter filter,
    required Iterable<Client> clients,
    required bool hasReachedMax,
  }) = _ClientSearchState;

  factory ClientSearchState.initial() => const ClientSearchState(
        term: "",
        status: ClientSearchStatus.loading(),
        clients: Iterable.empty(),
        filter: SearchFilter.name(),
        hasReachedMax: false,
      );
}

@freezed
class SearchFilter with _$SearchFilter {
  const factory SearchFilter.name() = _NameFilter;
}

extension ClientSearchStateExtension on ClientSearchState {
  SelectFilter<ClientModels, ClientModel> getFilter() {
    return filter.map(
      name: (_) => ClientNameFilter(term),
    );
  }
}
