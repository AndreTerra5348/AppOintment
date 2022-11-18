import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class ClientSearchBloc extends Bloc<ClientSearchEvent, ClientSearchState> {
  ClientSearchBloc() : super(const _Initial()) {
    on<ClientSearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
