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

class ClientDetailsDeleteBloc
    extends Bloc<ClientDetailsDeleteEvent, ClientDetailsDeleteState> {
  final IRepository<Client> _clientRepository;
  ClientDetailsDeleteBloc(this._clientRepository)
      : super(ClientDetailsDeleteState.initial()) {
    on<_Deleted>(_onDeletePressed);
  }

  FutureOr<void> _onDeletePressed(
      _Deleted event, Emitter<ClientDetailsDeleteState> emit) async {
    event.client.validity.fold(
      () => throw CriticalError('Invalid client'),
      (client) async {
        emit(ClientDetailsDeleteState.inProgress(client: event.client));

        final result = await _clientRepository.delete(state.client.id);

        result.fold(
          (failure) => emit(ClientDetailsDeleteState.dbFailure(
              client: event.client, failure: failure)),
          (completed) => emit(
            completed
                ? ClientDetailsDeleteState.suceess(client: event.client)
                : ClientDetailsDeleteState.notFoundFailure(
                    client: event.client),
          ),
        );
      },
    );
  }
}
