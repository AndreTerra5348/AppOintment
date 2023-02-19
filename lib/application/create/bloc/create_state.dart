part of 'create_bloc.dart';

/// Defines [EntityMixin] registration states
@freezed
class CreateState with _$CreateState {
  const CreateState._();

  /// Emitted when intializing
  factory CreateState.initial() = _Initial;

  /// Emitted when the [EntityMixin] is successfully registered
  factory CreateState.success() = _Success;

  /// Emitted when the [EntityMixin] is registering
  factory CreateState.inProgress() = _InProgress;

  /// Emitted when the [EntityMixin] fails to register for any reason
  factory CreateState.failure({required SubmissionFailure failure}) = _Failure;

  /// Emitted when the [EntityMixin] fails to register due to invalid fields
  factory CreateState.invalidFieldFailure() =>
      CreateState.failure(failure: const SubmissionFailure.invalidFields());

  /// Emitted when the [EntityMixin] fails to register due to a [Repository] error
  factory CreateState.repositoryFailure({required RepositoryFailure failure}) =>
      CreateState.failure(
        failure: SubmissionFailure.repository(
          failure: failure,
        ),
      );

  /// Returns true if the [EntityMixin] is registering
  bool get isInProgress => this is _InProgress;

  /// Returns true if the [EntityMixin] is successfully registered
  bool get isSuccess => this is _Success;

  /// Returns true if the [EntityMixin] failed to register
  bool get isFailure => this is _Failure;
}
