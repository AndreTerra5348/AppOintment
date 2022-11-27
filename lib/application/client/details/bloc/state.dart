part of 'bloc.dart';

@freezed
class ClientDetailsState with _$ClientDetailsState {
  const factory ClientDetailsState({
    required Client client,
    required ClientDetailsStatus status,
  }) = _ClientDetailsState;

  factory ClientDetailsState.initial() => ClientDetailsState(
        client: Client.withoutUid(name: Name('')),
        status: const ClientDetailsStatus.loading(),
      );
}
