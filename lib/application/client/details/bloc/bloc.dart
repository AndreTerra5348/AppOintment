import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  ClientDetailsBloc() : super(ClientDetailsState.initial()) {
    on<_ClientLoaded>(_onClientLoaded);
    on<_EditPressed>(_onEditPressed);
    on<_SavePressed>(_onSavePressed);
    on<_NameChanged>(_onNameChanged);
  }

  FutureOr<void> _onClientLoaded(
      _ClientLoaded event, Emitter<ClientDetailsState> emit) {
    emit(state.copyWith(client: event.client));
  }

  FutureOr<void> _onEditPressed(
      _EditPressed event, Emitter<ClientDetailsState> emit) {
    emit(state.copyWith(isEditing: true));
  }

  FutureOr<void> _onSavePressed(
      _SavePressed event, Emitter<ClientDetailsState> emit) {
    emit(
      state.copyWith(
        submissionStatus: state.client.isValid
            ? const SubmissionStatus.inProgress()
            : const SubmissionStatus.failure(
                failure: SubmissionFailure.invalidFields(),
              ),
        isEditing: false,
      ),
    );

    // TODO: save edited client
  }

  FutureOr<void> _onNameChanged(
      _NameChanged event, Emitter<ClientDetailsState> emit) {
    emit(
      state.copyWith(
        submissionStatus: const SubmissionStatus.initial(),
        client: state.client.copyWith(
          name: Name(event.name),
        ),
        isEditing: true,
      ),
    );
  }
}
