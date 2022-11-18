part of 'bloc.dart';

@freezed
class ClientSearchEvent with _$ClientSearchEvent {
  const factory ClientSearchEvent.started() = _Started;
}
