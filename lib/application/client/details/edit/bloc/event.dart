part of 'bloc.dart';

@freezed
class ClientDetailsEditEvent with _$ClientDetailsEditEvent {
  const factory ClientDetailsEditEvent.editPressed({required Client client}) =
      _EditPressed;
  const factory ClientDetailsEditEvent.cancelPressed() = _CancelPressed;
  const factory ClientDetailsEditEvent.savePressed() = _SavePressed;
  const factory ClientDetailsEditEvent.nameChanged({required String name}) =
      _NameChanged;
}
