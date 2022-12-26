import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_event.dart';
part 'client_state.dart';
part 'client_bloc.freezed.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  ClientBloc() : super(ClientState.initial()) {
    on<_Loaded>((event, emit) {
      emit(state.copyWith(client: event.client));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
        client: state.client.copyWith(name: Name(event.name)),
      ));
    });
  }
}
