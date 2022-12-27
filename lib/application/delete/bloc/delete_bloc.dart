import 'dart:async';

import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_errors.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_event.dart';
part 'delete_state.dart';
part 'delete_bloc.freezed.dart';

class DeleteBloc<T extends EntityMixin> extends Bloc<DeleteEvent, DeleteState> {
  final Repository<T> _repository;
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
