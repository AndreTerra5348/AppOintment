import 'dart:async';

import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class DetailsBloc<T extends EntityMixin>
    extends Bloc<DetailsEvent, DetailsState<T>> {
  final IRepository<T> _repository;
  DetailsBloc(this._repository) : super(DetailsState<T>.loading()) {
    on<_Loaded>(_onLoaded);
  }

  FutureOr<void> _onLoaded(_Loaded event, Emitter<DetailsState<T>> emit) async {
    if (event.id.isNotValid) {
      throw CriticalError("Invalid id");
    }

    emit(DetailsState<T>.loading());

    final result = await _repository.getById(event.id);

    emit(
      result.fold(
        (failure) => DetailsState<T>.repositoryFailure(failure: failure),
        (entity) => DetailsState<T>.success(entity: entity),
      ),
    );
  }
}
