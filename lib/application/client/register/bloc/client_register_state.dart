part of 'client_register_bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState {
  const factory ClientRegisterState(
      {required ClientRegisterForm clientRegisterForm}) = _ClientFormState;
  factory ClientRegisterState.initial() =>
      ClientRegisterState(clientRegisterForm: ClientRegisterForm.initial());
}
