import 'package:appointment/domain/client/values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_form_event.dart';
part 'client_form_state.dart';
part 'client_form_bloc.freezed.dart';

class ClientFormBloc extends Bloc<ClientFormEvent, ClientFormState> {
  ClientFormBloc() : super(ClientFormState.initial()) {
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(name: Name(event.name)));
    });
  }
}
