part of 'bloc.dart';

@freezed
class ClientSearchState with _$ClientSearchState {
  const factory ClientSearchState(
      {required String term,
      required SearchFilter filter}) = _ClientSearchState;

  factory ClientSearchState.initial() =>
      const ClientSearchState(term: "", filter: SearchFilter.name());
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
