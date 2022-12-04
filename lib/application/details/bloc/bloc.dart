import 'dart:async';

import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class DetailsBloc<T extends EntityMixin>
    extends Bloc<DetailsEvent<T>, DetailsState<T>> {
  DetailsBloc() : super(DetailsState<T>.loading()) {
    on<_Loaded<T>>(_onLoaded);
  }

  FutureOr<void> _onLoaded(_Loaded<T> event, Emitter<DetailsState<T>> emit) {
    event.entity.validity.fold(
      () => throw CriticalError('Invalid entity'),
      (client) => emit(DetailsState<T>.loaded(entity: event.entity)),
    );
  }
}
