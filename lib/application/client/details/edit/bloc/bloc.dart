import 'dart:async';

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

class ClientDetailsEditBloc
    extends Bloc<ClientDetailsEditEvent, ClientDetailsEditState> {
  final IRepository<Client> _clientRepository;
  ClientDetailsEditBloc(this._clientRepository)
      : super(ClientDetailsEditState.initial()) {
    on<_Started>(_onStarted);
    on<_Canceled>(_onCanceled);
    on<_SavePressed>(_onSavePressed);
    on<_NameChanged>(_onNameChanged);
  }

  FutureOr<void> _onStarted(
      _Started event, Emitter<ClientDetailsEditState> emit) {
    event.client.validity.fold(
      () => throw CriticalError('Invalid client'),
      (client) => emit(
        state.copyWith(
          client: event.client,
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ),
    );
  }

  FutureOr<void> _onSavePressed(
      _SavePressed event, Emitter<ClientDetailsEditState> emit) async {
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
      _NameChanged event, Emitter<ClientDetailsEditState> emit) {
    emit(
      state.copyWith(
        submissionStatus: const SubmissionStatus.initial(),
        client: state.client.copyWith(
          name: Name(event.name),
        ),
      ),
    );
  }

  FutureOr<void> _onCanceled(
      _Canceled event, Emitter<ClientDetailsEditState> emit) async {
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
