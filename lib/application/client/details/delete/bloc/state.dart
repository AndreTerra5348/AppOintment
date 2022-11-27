part of 'bloc.dart';

@freezed
class ClientDetailsDeleteState with _$ClientDetailsDeleteState {
  const factory ClientDetailsDeleteState({
    required Client client,
    required SubmissionStatus submissionStatus,
  }) = _ClientDetailsDeleteState;
  factory ClientDetailsDeleteState.initial() => ClientDetailsDeleteState(
        client: Client.withoutUid(name: Name('')),
        submissionStatus: const SubmissionStatus.initial(),
      );
  factory ClientDetailsDeleteState.suceess({required Client client}) =>
      ClientDetailsDeleteState(
        client: client,
        submissionStatus: const SubmissionStatus.success(),
      );
  factory ClientDetailsDeleteState.inProgress({required Client client}) =>
      ClientDetailsDeleteState(
        client: client,
        submissionStatus: const SubmissionStatus.inProgress(),
      );
  factory ClientDetailsDeleteState.notFoundFailure({required Client client}) =>
      ClientDetailsDeleteState(
        client: client,
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.notFound(),
        ),
      );
  factory ClientDetailsDeleteState.dbFailure(
          {required Client client, required RepositoryFailure failure}) =>
      ClientDetailsDeleteState(
        client: client,
        submissionStatus: SubmissionStatus.failure(
          failure: SubmissionFailure.repository(failure: failure),
        ),
      );
}
