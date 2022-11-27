part of 'bloc.dart';

@freezed
class ClientDetailsEditState with _$ClientDetailsEditState {
  const factory ClientDetailsEditState({
    required Client client,
    required bool isEditing,
    required SubmissionStatus submissionStatus,
  }) = _ClientDetailsEditState;
  factory ClientDetailsEditState.initial() => ClientDetailsEditState(
        client: Client.withoutUid(name: Name('')),
        isEditing: false,
        submissionStatus: const SubmissionStatus.initial(),
      );
}

extension ClientDetailsEditStateX on ClientDetailsEditState {
  ClientDetailsEditState get asInProgress => copyWith(
        submissionStatus: const SubmissionStatus.inProgress(),
      );

  ClientDetailsEditState get asSuccess => copyWith(
        submissionStatus: const SubmissionStatus.success(),
        isEditing: false,
      );

  ClientDetailsEditState get asInvalidFieldsFailure => copyWith(
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.invalidFields(),
        ),
      );
  ClientDetailsEditState get asNotFoundFailure => copyWith(
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.notFound(),
        ),
      );

  ClientDetailsEditState copyWithRepositoryFailure(
      {required RepositoryFailure failure}) {
    return copyWith(
      submissionStatus: SubmissionStatus.failure(
        failure: SubmissionFailure.repository(failure: failure),
      ),
    );
  }
}
