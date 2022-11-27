part of 'bloc.dart';

@freezed
class ClientDetailsEditEvent with _$ClientDetailsEditEvent {
  const factory ClientDetailsEditEvent.started({required Client client}) =
      _Started;
  const factory ClientDetailsEditEvent.editCanceled() = _Canceled;
  const factory ClientDetailsEditEvent.savePressed() = _SavePressed;
  const factory ClientDetailsEditEvent.nameChanged({required String name}) =
      _NameChanged;
}
