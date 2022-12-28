part of 'load_bloc.dart';

/// Defines [EntityMixin] loading states
@freezed
class LoadState<T extends EntityMixin> with _$LoadState<T> {
  LoadState._();

  /// Emitted when the [EntityMixin] is loading
  factory LoadState.loading() = _Loading<T>;

  /// Emitted when the [EntityMixin] is successfully loaded
  factory LoadState.success({required T entity}) = _Success<T>;

  /// Emitted when the [EntityMixin] fails to load for any reason
  factory LoadState.failure({required SubmissionFailure failure}) = _Failure<T>;

  /// Emitted when the [EntityMixin] fails to load due [Repository] error
  factory LoadState.repositoryFailure({required RepositoryFailure failure}) =>
      LoadState.failure(
          failure: SubmissionFailure.repository(failure: failure));

  /// Returns true if the [EntityMixin] is loading
  bool get isLoading => this is _Loading;

  /// Returns true if the [EntityMixin] is successfully loaded
  bool get isSuccess => this is _Success;

  /// Returns true if the [EntityMixin] failed to load
  bool get isFailure => this is _Failure;
}
