import 'dart:async';

import 'package:appointment/application/client/details/status.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  final IRepository<Client> _clientRepository;
  ClientDetailsBloc(this._clientRepository)
      : super(ClientDetailsState.initial()) {
    on<_ClientLoaded>(_onClientLoaded);
    on<_DeletePressed>(_onDeletePressed);
    on<_EditPressed>(_onEditPressed);
    on<_EditCanceled>(_onEditCanceled);
    on<_SavePressed>(_onSavePressed);
    on<_NameChanged>(_onNameChanged);
  }

  FutureOr<void> _onClientLoaded(
      _ClientLoaded event, Emitter<ClientDetailsState> emit) {
    event.client.validity.fold(
      () => throw CriticalError('Invalid client'),
      (client) => emit(
        state.copyWith(
          client: event.client,
          status: const ClientDetailsStatus.ready(),
        ),
      ),
    );
  }

  FutureOr<void> _onDeletePressed(
      _DeletePressed event, Emitter<ClientDetailsState> emit) {}

  FutureOr<void> _onEditPressed(
      _EditPressed event, Emitter<ClientDetailsState> emit) {
    emit(state.copyWith(isEditing: true));
  }

  FutureOr<void> _onSavePressed(
      _SavePressed event, Emitter<ClientDetailsState> emit) async {
    state.client.validity.fold(
      () => emit(state.asInvalidFieldsFailure),
      (client) async {
        emit(state.asInProgress);

        final result = await _clientRepository.update(state.client);

        result.fold(
          (failure) => emit(state.copyWithRepositoryFailure(failure: failure)),
          (completed) => emit(
            completed ? state.asSuccess : state.asNotFoundFailure,
          ),
        );
      },
    );
  }

  FutureOr<void> _onNameChanged(
      _NameChanged event, Emitter<ClientDetailsState> emit) {
    emit(
      state.copyWith(
        submissionStatus: const SubmissionStatus.initial(),
        client: state.client.copyWith(
          name: Name(event.name),
        ),
      ),
    );
  }

  FutureOr<void> _onEditCanceled(
      _EditCanceled event, Emitter<ClientDetailsState> emit) async {
    emit(state.asInProgress);

    final result = await _clientRepository.getById(state.client.id);

    result.fold(
      (failure) => emit(state.copyWithRepositoryFailure(failure: failure)),
      (client) => emit(
        state.copyWith(
          submissionStatus: const SubmissionStatus.initial(),
          isEditing: false,
          client: client,
        ),
      ),
    );
  }
}
