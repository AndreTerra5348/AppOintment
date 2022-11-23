import 'dart:async';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

@injectable
class ClientRegisterBloc
    extends Bloc<ClientRegisterEvent, ClientRegisterState> {
  final IRepository<Client> _repository;
  ClientRegisterBloc(this._repository) : super(ClientRegisterState.initial()) {
    on<_NameChanged>(_nameChanged);
    on<_Submitted>(_submitted);
  }
  FutureOr<void> _nameChanged(
      _NameChanged event, Emitter<ClientRegisterState> emit) {
    emit(
      state.copyWith(
          name: Name(event.name),
          submissionStatus: const SubmissionStatus.initial()),
    );
  }

  FutureOr<void> _submitted(
      _Submitted event, Emitter<ClientRegisterState> emit) async {
    emit(state.copyWith(
        submissionStatus: state.isValid
            ? const SubmissionStatus.inProgress()
            : const SubmissionStatus.failure(
                failure: SubmissionFailure.invalidFields())));

    if (state.isNotValid) {
      return;
    }

    final result =
        await _repository.insert(Client.withoutUid(name: state.name));

    result.fold(
      (l) => emit(state.copyWithFailure(
          failure: SubmissionFailure.repository(failure: l))),
      (r) => emit(ClientRegisterState.success()),
    );
  }
}
