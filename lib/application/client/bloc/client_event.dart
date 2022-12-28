part of 'client_bloc.dart';

/// Defines [Client] events
@freezed
class ClientEvent with _$ClientEvent {
  /// Event to load the [Client]
  const factory ClientEvent.loaded({required Client client}) = _Loaded;

  /// Event to change the [Name] of the [Client]
  const factory ClientEvent.nameChanged({required String name}) = _NameChanged;
}
