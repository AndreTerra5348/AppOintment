part of 'bloc.dart';

@freezed
class ClientDetailsEvent with _$ClientDetailsEvent {
  const factory ClientDetailsEvent.clientLoaded({required Client client}) =
      _ClientLoaded;
  const factory ClientDetailsEvent.editPressed() = _EditPressed;
  const factory ClientDetailsEvent.editCanceled() = _EditCanceled;
  const factory ClientDetailsEvent.savePressed() = _SavePressed;
  const factory ClientDetailsEvent.nameChanged({required String name}) =
      _NameChanged;
}
