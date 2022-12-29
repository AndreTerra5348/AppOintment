part of 'client_search_bloc.dart';

/// Defines [Client] search events
@freezed
class ClientSearchEvent with _$ClientSearchEvent {
  /// Event to fetch [Client]s
  const factory ClientSearchEvent.fetchRequested() = _FetchRequested;

  /// Event to change the [Client]s search term
  const factory ClientSearchEvent.termChanged({required String term}) =
      _TermChanged;

  /// Event to refresh the requested [Client]s
  const factory ClientSearchEvent.refreshRequested() = _RefreshRequested;
}
