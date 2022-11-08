part of 'client_form_bloc.dart';

@freezed
class ClientFormState with _$ClientFormState {
  const factory ClientFormState({required Name name}) = _ClientFormState;
  factory ClientFormState.initial() => ClientFormState(name: Name.empty());
}
