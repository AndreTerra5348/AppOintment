part of 'bloc.dart';

@freezed
class ClientRegisterState with _$ClientRegisterState, FormMixin {
  const ClientRegisterState._();

  const factory ClientRegisterState(
      {required SubmissionStatus submissionStatus,
      required Name name}) = _ClientFormState;

  factory ClientRegisterState.initial() => ClientRegisterState(
      submissionStatus: const SubmissionStatus.initial(), name: Name(""));

  factory ClientRegisterState.success() => ClientRegisterState.initial()
      .copyWith(submissionStatus: const SubmissionStatus.success());

  @override
  List<ValueObject> get values => [name];
}

extension ClientRegisterStateExt on ClientRegisterState {
  ClientRegisterState copyWithFailure({required SubmissionFailure failure}) =>
      copyWith(submissionStatus: SubmissionStatus.failure(failure: failure));
}
