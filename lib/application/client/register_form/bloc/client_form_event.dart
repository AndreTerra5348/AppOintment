part of 'client_form_bloc.dart';

@freezed
class ClientFormEvent with _$ClientFormEvent {
  const factory ClientFormEvent.nameChanged({required String name}) =
      _NameChanged;
}
