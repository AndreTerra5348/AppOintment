part of 'register_bloc.dart';

/// Defines [EntityMixin] registration states
@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  /// Emitted when intializing
  factory RegisterState.initial() = _Initial;

  /// Emitted when the [EntityMixin] is successfully registered
  factory RegisterState.success() = _Success;

  /// Emitted when the [EntityMixin] is registering
  factory RegisterState.inProgress() = _InProgress;

  /// Emitted when the [EntityMixin] fails to register for any reason
  factory RegisterState.failure({required SubmissionFailure failure}) =
      _Failure;

  /// Emitted when the [EntityMixin] fails to register due to invalid fields
  factory RegisterState.invalidFieldFailure() =>
      RegisterState.failure(failure: const SubmissionFailure.invalidFields());

  /// Emitted when the [EntityMixin] fails to register due to a [Repository] error
  factory RegisterState.repositoryFailure(
          {required RepositoryFailure failure}) =>
      RegisterState.failure(
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
