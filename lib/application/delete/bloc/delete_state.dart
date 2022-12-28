part of 'delete_bloc.dart';

/// Defines [EntityMixin] deletion states
@freezed
class DeleteState with _$DeleteState {
  const DeleteState._();

  /// Emitted when the [DeleteBloc] is initialized
  const factory DeleteState.initial() = _Initial;

  /// Emited when the [EntityMixin] is successfully deleted
  const factory DeleteState.success() = _Success;

  /// Emitted when the [EntityMixin] is being deleted
  const factory DeleteState.inProgress() = _InProgress;

  /// Emitted when the [EntityMixin] deletion failed for some reason
  const factory DeleteState.failure({required SubmissionFailure failure}) =
      _Failure;

  /// Emitted when the [EntityMixin] is not found
  factory DeleteState.notFoundFailure() =>
      const DeleteState.failure(failure: SubmissionFailure.notFound());

  /// Emitted when the [EntityMixin] deletion failed due to a [Repository] error
  factory DeleteState.repositoryFailure({required RepositoryFailure failure}) =>
      DeleteState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  /// Returns true if the deletion is in progress
  bool get isInProgress => this is _InProgress;

  /// Returns true if the deletion is successful
  bool get isSuccess => this is _Success;

  /// Returns true if the deletion failed
  bool get isFailure => this is _Failure;
}
