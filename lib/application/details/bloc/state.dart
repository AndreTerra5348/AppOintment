part of 'bloc.dart';

@freezed
class DetailsState<T extends EntityMixin> with _$DetailsState<T> {
  DetailsState._();
  factory DetailsState.loading() = _Loading<T>;

  factory DetailsState.success({required T entity}) = _Success<T>;

  factory DetailsState.failure({required SubmissionFailure failure}) =
      _Failure<T>;

  factory DetailsState.repositoryFailure(
          {required RepositoryFailure failure}) =>
      DetailsState.failure(
          failure: SubmissionFailure.repository(failure: failure));

  bool get isLoading => this is _Loading;
  bool get isNotLoading => !isLoading;
  bool get isSuccess => this is _Success;
  bool get isNotSuccess => !isSuccess;
  bool get isFailure => this is _Failure;
  bool get isNotFailure => !isFailure;
}
