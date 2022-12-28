part of 'edit_bloc.dart';

/// Defines [EntityMixin] editing states
@freezed
class EditState with _$EditState {
  const EditState._();

  /// Emitted when the [EditBloc] is initialized
  const factory EditState.initial() = _Initial;

  /// Emitted when the [EditBloc] is editing
  const factory EditState.editing() = _Editing;

  /// Emitted when editing is in progress
  const factory EditState.inProgress() = _InProgress;

  /// Emitted when editing was saved successfully
  const factory EditState.success() = _Success;

  /// Emitted when editing failed for some reason
  const factory EditState.failure({required SubmissionFailure failure}) =
      _Failure;

  /// Emitted when editing failed due to invalid fields
  factory EditState.invalidFieldFailure() =>
      const EditState.failure(failure: SubmissionFailure.invalidFields());

  /// Emitted when the [EntityMixin] is not found
  factory EditState.notFoundFailure() =>
      const EditState.failure(failure: SubmissionFailure.notFound());

  /// Emitted when editing failed due to a [Repository] error
  factory EditState.repositoryFailure({required RepositoryFailure failure}) =>
      EditState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  /// Returns true editing is enabled
  bool get isEditing => this is _Editing;

  /// Returns true if saving is in progress
  bool get isInProgress => this is _InProgress;

  /// Returns true if saving is successful
  bool get isSuccess => this is _Success;

  /// Returns true if saving failed
  bool get isFailure => this is _Failure;
}
