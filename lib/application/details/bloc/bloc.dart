import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class DetailsBloc<T extends EntityMixin>
    extends Bloc<DetailsEvent<T>, DetailsState<T>> {
  DetailsBloc() : super(DetailsState<T>.initial()) {
    on<_EditEmited<T>>(
        (event, emit) => emit(DetailsState.edit(state: event.state)));
    on<_DeleteEmited<T>>(
        (event, emit) => emit(DetailsState.delete(state: event.state)));
    on<_LoadEmited<T>>(
        (event, emit) => emit(DetailsState.load(state: event.state)));
  }
}
