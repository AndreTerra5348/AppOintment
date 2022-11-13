part of 'bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState {
  const factory ClientRegisterState({
    required ClientRegisterForm form,
  }) = _ClientFormState;
  factory ClientRegisterState.initial() =>
      ClientRegisterState(form: ClientRegisterForm.initial());
  factory ClientRegisterState.success() =>
      ClientRegisterState(form: ClientRegisterForm.success());
}

extension ClientRegisterStateExt on ClientRegisterState {
  ClientRegisterState copyWithSubmissionStatus(
          {required SubmissionStatus status}) =>
      copyWith(form: form.copyWith(submissionStatus: status));

  ClientRegisterState copyWithFailure({required SubmissionFailure failure}) =>
      copyWith(
        form: form.copyWith(
          submissionStatus: SubmissionStatus.failure(failure: failure),
        ),
      );
}
