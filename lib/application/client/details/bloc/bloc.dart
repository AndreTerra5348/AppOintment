import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientDetailsBloc extends Bloc<ClientDetailsEvent, ClientDetailsState> {
  ClientDetailsBloc() : super(const _Initial()) {
    on<_EditEmited>(
        (event, emit) => emit(ClientDetailsState.edit(state: event.state)));
    on<_DeleteEmited>(
        (event, emit) => emit(ClientDetailsState.delete(state: event.state)));
    on<_DetailsEmited>(
        (event, emit) => emit(ClientDetailsState.details(state: event.state)));
  }
}
