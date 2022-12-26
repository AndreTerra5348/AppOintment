import 'dart:async';
import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc<T extends EntityMixin>
    extends Bloc<RegisterEvent<T>, RegisterState> {
  final Repository<T> _repository;
  final RegisterValidator<T> validator;
  RegisterBloc(this._repository, this.validator)
      : super(RegisterState.initial()) {
    on<_Registered<T>>(_registered);
  }

  FutureOr<void> _registered(
      _Registered<T> event, Emitter<RegisterState> emit) async {
    emit(
      validator.validate(event.entity).fold(
            () => RegisterState.invalidFieldFailure(),
            (_) => RegisterState.inProgress(),
          ),
    );

    if (state.isFailure) return;

    final result = await _repository.insert(event.entity);

    emit(
      result.fold(
        (failure) => RegisterState.repositoryFailure(failure: failure),
        (entity) => RegisterState.success(),
      ),
    );
  }
}
