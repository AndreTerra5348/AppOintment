part of 'client_register_bloc.dart';

@freezed
class ClientRegisterEvent with _$ClientRegisterEvent {
  const factory ClientRegisterEvent.nameChanged({required String name}) =
      _NameChanged;
}
