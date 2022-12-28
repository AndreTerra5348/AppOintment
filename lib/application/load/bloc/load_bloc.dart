/// Defines [LoadBloc] for [EntityMixin]
import 'dart:async';

import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_errors.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_event.dart';
part 'load_state.dart';
part 'load_bloc.freezed.dart';

/// Handle [EntityMixin] loading
class LoadBloc<T extends EntityMixin> extends Bloc<LoadEvent, LoadState<T>> {
  final Repository<T> _repository;
  LoadBloc(this._repository) : super(LoadState<T>.loading()) {
    on<_Loaded>(_onLoaded);
  }

  FutureOr<void> _onLoaded(_Loaded event, Emitter<LoadState<T>> emit) async {
    if (event.id.isNotValid) {
      throw CriticalError("Invalid id");
    }

    emit(LoadState<T>.loading());

    final result = await _repository.getById(event.id);

    emit(
      result.fold(
        (failure) => LoadState<T>.repositoryFailure(failure: failure),
        (entity) => LoadState<T>.success(entity: entity),
      ),
    );
  }
}
