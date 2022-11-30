import 'dart:async';

import 'package:appointment/application/client/details/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  ClientDetailsBloc() : super(ClientDetailsState.initial()) {
    on<_ClientLoaded>(_onClientLoaded);
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
}
