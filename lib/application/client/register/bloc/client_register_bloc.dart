import 'package:appointment/application/client/register/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_register_event.dart';
part 'client_register_state.dart';
part 'client_register_bloc.freezed.dart';

class ClientRegisterBloc
    extends Bloc<ClientRegisterEvent, ClientRegisterState> {
  ClientRegisterBloc() : super(ClientRegisterState.initial()) {
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
          clientRegisterForm: state.clientRegisterForm
              .copyWith(nameInput: NameInput.dirty(Name(event.name)))));
    });
  }
}
