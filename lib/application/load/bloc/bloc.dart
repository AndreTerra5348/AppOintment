import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

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
