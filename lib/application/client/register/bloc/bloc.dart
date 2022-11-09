import 'package:appointment/application/client/register/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientRegisterBloc
    extends Bloc<ClientRegisterEvent, ClientRegisterState> {
  ClientRegisterBloc() : super(ClientRegisterState.initial()) {
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
        form: state.form.copyWith(
          nameInput: NameInput.pure(Name(event.name)),
        ),
      ));
    });

    on<_NameUnfocused>((event, emit) {
      emit(state.copyWith(
        form: state.form.copyWith(
          nameInput: NameInput.dirty(state.form.nameInput.value),
        ),
      ));
    });
  }
}
