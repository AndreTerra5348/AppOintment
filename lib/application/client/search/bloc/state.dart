part of 'bloc.dart';

@freezed
class ClientSearchState with _$ClientSearchState {
  const factory ClientSearchState({
    required String term,
    required bool isLoading,
    required SearchFilter filter,
    required Iterable<Client> clients,
    required Pagination pagination,
  }) = _ClientSearchState;

  factory ClientSearchState.initial() => ClientSearchState(
      term: "",
      isLoading: true,
      clients: const Iterable.empty(),
      filter: const SearchFilter.name(),
      pagination: Pagination.empty());
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
