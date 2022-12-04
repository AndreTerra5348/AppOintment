import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class DeleteBloc<T extends EntityMixin> extends Bloc<DeleteEvent, DeleteState> {
  final IRepository<T> _repository;
  DeleteBloc(this._repository) : super(_Initial()) {
    on<_Deleted>(_deleted);
  }

  FutureOr<void> _deleted(
      _Deleted<EntityMixin> event, Emitter<DeleteState> emit) async {
    event.entity.validity.fold(
      () => throw CriticalError('Invalid client'),
      (client) => emit(DeleteState.inProgress()),
    );

    if (state.isFailure) return;

    final result = await _repository.delete(event.entity.id);

    emit(result.fold(
      (failure) => DeleteState.repositoryFailure(failure: failure),
      (completed) =>
          completed ? DeleteState.success() : DeleteState.notFoundFailure(),
    ));
  }
}
