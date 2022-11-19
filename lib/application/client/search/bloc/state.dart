part of 'bloc.dart';

@freezed
class ClientSearchState with _$ClientSearchState {
  const factory ClientSearchState({
    required String term,
    required SearchFilter filter,
    required Pagination<Client> pagination,
  }) = _ClientSearchState;

  factory ClientSearchState.initial() => ClientSearchState(
      term: "",
      filter: const SearchFilter.name(),
      pagination: Pagination.empty());
}

@freezed
class SearchFilter with _$SearchFilter {
  const factory SearchFilter.name() = _NameFilter;
}

extension ClientSearchStateExtension on ClientSearchState {
  SelectFilter<ClientModels, ClientModel> getFilter(
      Dao<ClientModels, ClientModel> dao) {
    return filter.map(
      name: (_) => ClientNameFilter(term),
    );
  }
}
