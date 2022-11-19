part of 'bloc.dart';

@freezed
class ClientSearchEvent with _$ClientSearchEvent {
  const factory ClientSearchEvent.termChanged({required String term}) =
      _TermChanged;

  const factory ClientSearchEvent.nextPageRequested() = _NextPageRequested;
}
