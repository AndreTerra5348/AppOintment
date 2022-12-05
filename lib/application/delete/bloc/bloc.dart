import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class DeleteBloc<T extends EntityMixin> extends Bloc<DeleteEvent, DeleteState> {
  final IRepository<T> _repository;
  DeleteBloc(this._repository) : super(const _Initial()) {
    on<_Deleted>(_onDeleted);
  }

  FutureOr<void> _onDeleted(_Deleted event, Emitter<DeleteState> emit) async {
    if (event.id.isNotValid) {
      throw CriticalError('Invalid Id');
    }

    emit(const DeleteState.inProgress());

    final result = await _repository.delete(event.id);

    emit(result.fold(
      (failure) => DeleteState.repositoryFailure(failure: failure),
      (completed) => completed
          ? const DeleteState.success()
          : DeleteState.notFoundFailure(),
    ));
  }
}
