part of 'bloc.dart';

@freezed
class ClientDetailsState with _$ClientDetailsState {
  const factory ClientDetailsState({
    required Client client,
    required bool isEditing,
    required SubmissionStatus submissionStatus,
    required ClientDetailsStatus status,
  }) = _ClientDetailsState;

  factory ClientDetailsState.initial() => ClientDetailsState(
        client: Client.withoutUid(name: Name('')),
        isEditing: false,
        submissionStatus: const SubmissionStatus.initial(),
        status: const ClientDetailsStatus.loading(),
      );
}

extension ClientDetailsStateX on ClientDetailsState {
  ClientDetailsState get asInProgress => copyWith(
        submissionStatus: const SubmissionStatus.inProgress(),
      );

  ClientDetailsState get asSuccess => copyWith(
        submissionStatus: const SubmissionStatus.success(),
        isEditing: false,
      );

  ClientDetailsState get asInvalidFieldsFailure => copyWith(
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.invalidFields(),
        ),
      );
  ClientDetailsState get asNotFoundFailure => copyWith(
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.notFound(),
        ),
      );

  ClientDetailsState copyWithRepositoryFailure(
      {required RepositoryFailure failure}) {
    return copyWith(
      submissionStatus: SubmissionStatus.failure(
        failure: SubmissionFailure.repository(failure: failure),
      ),
    );
  }
}
