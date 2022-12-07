import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

// TODO: change name to DetailsBloc
// TODO: add generic type
class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  ClientDetailsBloc() : super(const _Initial()) {
    on<_EditEmited>(
        (event, emit) => emit(ClientDetailsState.edit(state: event.state)));
    on<_DeleteEmited>(
        (event, emit) => emit(ClientDetailsState.delete(state: event.state)));
    on<_LoadEmited>(
        (event, emit) => emit(ClientDetailsState.load(state: event.state)));
  }
}
