part of 'bloc.dart';

@freezed
class DeleteState with _$DeleteState {
  const DeleteState._();

  factory DeleteState.initial() = _Initial;

  factory DeleteState.success() = _Success;

  factory DeleteState.inProgress() = _InProgress;

  factory DeleteState.failure({required SubmissionFailure failure}) = _Failure;

  factory DeleteState.notFoundFailure() =>
      DeleteState.failure(failure: const SubmissionFailure.notFound());

  factory DeleteState.repositoryFailure({required RepositoryFailure failure}) =>
      DeleteState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  bool get isInitial => this is _Initial;
  bool get isInProgress => this is _InProgress;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
}
