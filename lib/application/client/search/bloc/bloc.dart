import 'dart:async';

import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  ClientSearchBloc() : super(ClientSearchState.initial()) {
    on<_TermChanged>(_termChanged);
  }
  FutureOr<void> _termChanged(
      _TermChanged event, Emitter<ClientSearchState> emit) {
    emit(state.copyWith(term: event.term));
  }
}
