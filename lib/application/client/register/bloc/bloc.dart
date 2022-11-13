import 'dart:async';
import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
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

  FutureOr<void> _submitted(event, emit) async {
    emit(state.copyWithSubmissionStatus(
        status: state.form.isValid
            ? const SubmissionStatus.inProgress()
            : const SubmissionStatus.failure()));

    if (state.form.isNotValid) {
      return;
    }

    final result =
        await _repository.insert(Client.withoutUid(name: state.form.name));

    result.fold(
      (l) {
        emit(
          state.copyWithFailure(failure: BlocFailure.repository(failure: l)),
        );
      },
      (r) {
        emit(ClientRegisterState.success());
      },
    );
  }

  FutureOr<void> _nameChanged(event, emit) {
    emit(state.copyWith(
      form: state.form.copyWith(
          name: Name(event.name),
          submissionStatus: const SubmissionStatus.initial()),
    ));
  }
}

@freezed
class BlocFailure with _$BlocFailure {
  const factory BlocFailure.repository({required RepositoryFailure failure}) =
      _Repository;
}
