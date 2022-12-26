part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  factory RegisterState.initial() = _Initial;

  factory RegisterState.success() = _Success;

  factory RegisterState.inProgress() = _InProgress;

  factory RegisterState.failure({required SubmissionFailure failure}) =
      _Failure;

  factory RegisterState.invalidFieldFailure() =>
      RegisterState.failure(failure: const SubmissionFailure.invalidFields());

  factory RegisterState.repositoryFailure(
          {required RepositoryFailure failure}) =>
      RegisterState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  bool get isInProgress => this is _InProgress;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
}
