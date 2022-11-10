part of 'bloc.dart';

@freezed
class ClientRegisterEvent with _$ClientRegisterEvent {
  const factory ClientRegisterEvent.nameChanged({required String name}) =
      _NameChanged;
  const factory ClientRegisterEvent.submitted() = _Submitted;
}
