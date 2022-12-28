/// Defines [ClientBloc]
import 'dart:async';

import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_event.dart';
part 'client_state.dart';
part 'client_bloc.freezed.dart';

/// Handles [Client] events and states
class ClientBloc extends Bloc<ClientEvent, ClientState> {
  ClientBloc() : super(ClientState.initial()) {
    on<_Loaded>(_onLoaded);
    on<_NameChanged>(_onNameChanged);
  }

  /// Loads the [Client] being handled
  FutureOr<void> _onLoaded(_Loaded event, Emitter<ClientState> emit) {
    emit(state.copyWith(client: event.client));
  }

  /// Changes the [Name] of the [Client]
  FutureOr<void> _onNameChanged(
    _NameChanged event,
    Emitter<ClientState> emit,
  ) {
    emit(state.copyWith(
      client: state.client.copyWith(
        name: Name(event.name),
      ),
    ));
  }
}
