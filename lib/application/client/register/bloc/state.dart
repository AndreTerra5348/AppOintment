part of 'bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState {
  const factory ClientRegisterState(
      {required ClientRegisterForm form,
      RepositoryFailure? repositoryFailure}) = _ClientFormState;
  factory ClientRegisterState.initial() =>
      ClientRegisterState(form: ClientRegisterForm.initial());
}

extension on ClientRegisterState {
  ClientRegisterState withSubmissionStatus(
          {required FormSubmissionStatus status}) =>
      copyWith(form: form.copyWith(submissionStatus: status));
}
