part of 'bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState {
  const factory ClientRegisterState({required ClientRegisterForm form}) =
      _ClientFormState;
  factory ClientRegisterState.initial() =>
      ClientRegisterState(form: ClientRegisterForm.initial());
}
