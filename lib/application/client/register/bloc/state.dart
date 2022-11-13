part of 'bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState {
  const factory ClientRegisterState(
      {required ClientRegisterForm form,
      BlocFailure? failure}) = _ClientFormState;
  factory ClientRegisterState.initial() =>
      ClientRegisterState(form: ClientRegisterForm.initial());
  factory ClientRegisterState.success() =>
      ClientRegisterState(form: ClientRegisterForm.success());
}

extension ClientRegisterStateExt on ClientRegisterState {
  ClientRegisterState copyWithSubmissionStatus(
          {required FormSubmissionStatus status}) =>
      copyWith(form: form.copyWith(submissionStatus: status));

  ClientRegisterState copyWithFailure({required BlocFailure failure}) =>
      copyWith(
          form: form.copyWith(submissionStatus: FormSubmissionStatus.failure),
          failure: failure);
}
