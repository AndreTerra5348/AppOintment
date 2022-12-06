import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

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
