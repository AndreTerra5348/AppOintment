part of 'client_bloc.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState({required Client client}) = _ClientState;
  factory ClientState.initial() =>
      ClientState(client: Client.withoutUid(name: Name("")));
}
