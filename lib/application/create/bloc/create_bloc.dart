/// Defines [CreateBloc] for [EntityMixin]
import 'dart:async';
import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/application/create/create_validator.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

/// Handle [EntityMixin] registration
class CreateBloc<T extends EntityMixin>
    extends Bloc<CreateEvent<T>, CreateState> {
  final Repository<T> _repository;
  final CreateValidator<T> validator;
  CreateBloc(this._repository, this.validator) : super(CreateState.initial()) {
    on<_Created<T>>(_registered);
  }

  FutureOr<void> _registered(
      _Created<T> event, Emitter<CreateState> emit) async {
    emit(
      validator.validate(event.entity).fold(
            () => CreateState.invalidFieldFailure(),
            (_) => CreateState.inProgress(),
          ),
    );

    if (state.isFailure) return;

    final result = await _repository.insert(event.entity);

    emit(
      result.fold(
        (failure) => CreateState.repositoryFailure(failure: failure),
        (entity) => CreateState.success(),
      ),
    );
  }
}
