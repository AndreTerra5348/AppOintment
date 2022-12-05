part of 'bloc.dart';

@freezed
class DeleteEvent with _$DeleteEvent {
  const factory DeleteEvent.deleted({required Uid id}) = _Deleted;
}
