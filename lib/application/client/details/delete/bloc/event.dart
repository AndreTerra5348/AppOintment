part of 'bloc.dart';

@freezed
class ClientDetailsDeleteEvent with _$ClientDetailsDeleteEvent {
  const factory ClientDetailsDeleteEvent.deleted({required Client client}) =
      _Deleted;
}
