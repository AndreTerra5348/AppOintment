part of 'bloc.dart';

@freezed
class EditState with _$EditState {
  const EditState._();
  const factory EditState.initial() = _Initial;
  const factory EditState.editing() = _Editing;
  const factory EditState.inProgress() = _InProgress;
  const factory EditState.success() = _Success;
  const factory EditState.failure({required SubmissionFailure failure}) =
      _Failure;

  factory EditState.invalidFieldFailure() =>
      const EditState.failure(failure: SubmissionFailure.invalidFields());

  factory EditState.notFoundFailure() =>
      const EditState.failure(failure: SubmissionFailure.notFound());

  factory EditState.repositoryFailure({required RepositoryFailure failure}) =>
      EditState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  bool get isInitial => this is _Initial;
  bool get isNotInitial => !isInitial;
  bool get isEditing => this is _Editing;
  bool get isNotEditing => !isEditing;
  bool get isInProgress => this is _InProgress;
  bool get isNotInProgress => !isInProgress;
  bool get isSuccess => this is _Success;
  bool get isNotSuccess => !isSuccess;
  bool get isFailure => this is _Failure;
  bool get isNotFailure => !isFailure;
}
