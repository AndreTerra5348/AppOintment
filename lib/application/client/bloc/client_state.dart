part of 'client_bloc.dart';

/// Defines [Client] states
@freezed
class ClientState with _$ClientState {
  /// Emitted when the [ClientBloc] changes state
  const factory ClientState({required Client client}) = _ClientState;

  /// Emitted when the [ClientBloc] is initialized
  factory ClientState.initial() =>
      ClientState(client: Client.withoutIdentifier(name: Name("")));
}
