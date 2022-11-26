import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
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
    on<_EditPressed>(_onEditPressed);
    on<_EditCanceled>(_onEditCanceled);
    on<_SavePressed>(_onSavePressed);
    on<_NameChanged>(_onNameChanged);
  }

  FutureOr<void> _onClientLoaded(
      _ClientLoaded event, Emitter<ClientDetailsState> emit) {
    event.client.validity.fold(
      // TODO: create specific exception
      () => throw Exception('Invalid client'),
      (client) => emit(state.copyWith(client: event.client)),
    );
  }

  FutureOr<void> _onEditPressed(
      _EditPressed event, Emitter<ClientDetailsState> emit) {
    emit(state.copyWith(isEditing: true));
  }

  FutureOr<void> _onSavePressed(
      _SavePressed event, Emitter<ClientDetailsState> emit) async {
    state.client.validity.fold(
      () => emit(_invalidFieldsState),
      (client) async {
        emit(_inProgressState);

        final result = await _clientRepository.update(state.client);

        result.fold(
          (failure) => emit(_getRepositoryFailureState(failure: failure)),
          (completed) => emit(
            state.copyWith(
              submissionStatus: completed
                  ? const SubmissionStatus.success()
                  : const SubmissionStatus.failure(
                      failure: SubmissionFailure.repository(
                        failure: RepositoryFailure.notFound(),
                      ),
                    ),
              isEditing: false,
            ),
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
    emit(_inProgressState);

    final result = await _clientRepository.getById(state.client.id);

    result.fold(
      (failure) => emit(_getRepositoryFailureState(failure: failure)),
      (client) => emit(
        state.copyWith(
          submissionStatus: const SubmissionStatus.initial(),
          isEditing: false,
          client: client,
        ),
      ),
    );
  }

  ClientDetailsState get _inProgressState => state.copyWith(
        submissionStatus: const SubmissionStatus.inProgress(),
      );

  ClientDetailsState get _invalidFieldsState => state.copyWith(
        submissionStatus: const SubmissionStatus.failure(
          failure: SubmissionFailure.invalidFields(),
        ),
      );

  ClientDetailsState _getRepositoryFailureState(
      {required RepositoryFailure failure}) {
    return state.copyWith(
      submissionStatus: SubmissionStatus.failure(
        failure: SubmissionFailure.repository(failure: failure),
      ),
    );
  }
}
