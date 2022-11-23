part of 'bloc.dart';

@freezed
class ClientDetailsState with _$ClientDetailsState {
  const factory ClientDetailsState({
    required Client client,
    required bool isEditing,
    required SubmissionStatus submissionStatus,
  }) = _ClientDetailsState;

  factory ClientDetailsState.initial() => ClientDetailsState(
        client: Client.withoutUid(name: Name('')),
        isEditing: false,
        submissionStatus: const SubmissionStatus.initial(),
      );
}
