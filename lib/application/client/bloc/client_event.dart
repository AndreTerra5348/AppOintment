part of 'client_bloc.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.loaded({required Client client}) = _Loaded;
  const factory ClientEvent.nameChanged({required String name}) = _NameChanged;
}
