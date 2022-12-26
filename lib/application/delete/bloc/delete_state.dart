part of 'delete_bloc.dart';

@freezed
class DeleteState with _$DeleteState {
  const DeleteState._();
  const factory DeleteState.initial() = _Initial;
  const factory DeleteState.success() = _Success;
  const factory DeleteState.inProgress() = _InProgress;
  const factory DeleteState.failure({required SubmissionFailure failure}) =
      _Failure;

  factory DeleteState.notFoundFailure() =>
      const DeleteState.failure(failure: SubmissionFailure.notFound());

  factory DeleteState.repositoryFailure({required RepositoryFailure failure}) =>
      DeleteState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  bool get isInProgress => this is _InProgress;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
}
