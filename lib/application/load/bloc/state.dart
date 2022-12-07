part of 'bloc.dart';

@freezed
class LoadState<T extends EntityMixin> with _$LoadState<T> {
  LoadState._();
  factory LoadState.loading() = _Loading<T>;

  factory LoadState.success({required T entity}) = _Success<T>;

  factory LoadState.failure({required SubmissionFailure failure}) = _Failure<T>;

  factory LoadState.repositoryFailure({required RepositoryFailure failure}) =>
      LoadState.failure(
          failure: SubmissionFailure.repository(failure: failure));

  bool get isLoading => this is _Loading;
  bool get isNotLoading => !isLoading;
  bool get isSuccess => this is _Success;
  bool get isNotSuccess => !isSuccess;
  bool get isFailure => this is _Failure;
  bool get isNotFailure => !isFailure;
}
