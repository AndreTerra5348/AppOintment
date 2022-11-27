part of 'bloc.dart';

@freezed
class ClientDetailsEvent with _$ClientDetailsEvent {
  const factory ClientDetailsEvent.clientLoaded({required Client client}) =
      _ClientLoaded;
}
